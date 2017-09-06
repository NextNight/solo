package org.b3log.solo.service;

import org.b3log.latke.Keys;
import org.b3log.latke.ioc.inject.Inject;
import org.b3log.latke.logging.Level;
import org.b3log.latke.logging.Logger;
import org.b3log.latke.model.Pagination;
import org.b3log.latke.repository.Query;
import org.b3log.latke.repository.RepositoryException;
import org.b3log.latke.repository.SortDirection;
import org.b3log.latke.repository.Transaction;
import org.b3log.latke.service.ServiceException;
import org.b3log.latke.util.Ids;
import org.b3log.latke.util.Paginator;
import org.b3log.latke.util.Strings;
import org.b3log.solo.model.ResourceDl;
import org.b3log.solo.repository.ResourceDlRepository;
import org.json.JSONArray;
import org.json.JSONObject;
import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;
import org.b3log.latke.Keys;
import org.b3log.latke.event.Event;
import org.b3log.latke.event.EventException;
import org.b3log.latke.event.EventManager;
import org.b3log.latke.ioc.inject.Inject;
import org.b3log.latke.logging.Level;
import org.b3log.latke.logging.Logger;
import org.b3log.latke.repository.RepositoryException;
import org.b3log.latke.repository.Transaction;
import org.b3log.latke.service.LangPropsService;
import org.b3log.latke.service.ServiceException;
import org.b3log.latke.service.annotation.Service;
import org.b3log.latke.util.CollectionUtils;
import org.b3log.latke.util.Ids;
import org.b3log.latke.util.Strings;
import org.b3log.solo.event.EventTypes;
import org.b3log.solo.model.*;
import org.b3log.solo.repository.*;
import org.b3log.solo.util.Comments;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import java.util.Date;
import java.util.List;

import static org.b3log.solo.model.Article.*;

/**
 * Author:rzx
 * Date:2017/9/6
 */
public class ResourceDlMgmtService {
    /**
     * Logger.
     */
    private static final Logger LOGGER = Logger.getLogger(ResourceDlMgmtService.class);

    @Inject
    private ResourceDlRepository resourceDlRepository;


    public JSONObject getResources(final JSONObject requestJSONObject) throws ServiceException {
        final JSONObject ret = new JSONObject();

        try {
            final int currentPageNum = requestJSONObject.getInt(Pagination.PAGINATION_CURRENT_PAGE_NUM);
            final int pageSize = requestJSONObject.getInt(Pagination.PAGINATION_PAGE_SIZE);
            final int windowSize = requestJSONObject.getInt(Pagination.PAGINATION_WINDOW_SIZE);

            final Query query = new Query().setCurrentPageNum(currentPageNum).setPageSize(pageSize).addSort(ResourceDl.RESOURCE_DL_COUNT, SortDirection.DESCENDING);

            final int pageCount = (int) Math.ceil((double) articleCount / (double) pageSize);

            query.setPageCount(pageCount);

            final JSONObject result = resourceDlRepository.get(query);

            final JSONObject pagination = new JSONObject();

            ret.put(Pagination.PAGINATION, pagination);
            final List<Integer> pageNums = Paginator.paginate(currentPageNum, pageSize, pageCount, windowSize);

            pagination.put(Pagination.PAGINATION_PAGE_COUNT, pageCount);
            pagination.put(Pagination.PAGINATION_PAGE_NUMS, pageNums);

            final JSONArray resources = result.getJSONArray(Keys.RESULTS);
            JSONArray excludes = requestJSONObject.optJSONArray(Keys.EXCLUDES);

            excludes = null == excludes ? new JSONArray() : excludes;

            for (int i = 0; i < resources.length(); i++) {
                final JSONObject resource = resources.getJSONObject(i);
                resource.put(RESOURCE_CREATE_TIME, ((Date) resource.get(ARTICLE_CREATE_DATE)).getTime());
                resource.put(ARTICLE_UPDATE_TIME, ((Date) resource.get(ARTICLE_UPDATE_DATE)).getTime());

                // Remove unused properties
                for (int j = 0; j < excludes.length(); j++) {
                    resource.remove(excludes.optString(j));
                }
            }

            ret.put(RESOURCES, articles);

            return ret;
        } catch (final Exception e) {
            LOGGER.log(Level.ERROR, "Gets articles failed", e);

            throw new ServiceException(e);
        }
    }
    /**
     * 添加资源
     * @param requestJSONObject
     * @return
     */
    public String addResouceDl(final JSONObject requestJSONObject) throws ServiceException {
        final Transaction transaction = resourceDlRepository.beginTransaction();

        try {
            final JSONObject resource = requestJSONObject.getJSONObject(ResourceDl.RESOURCE);

            final String ret = addResouceDlInternal(resource);

            transaction.commit();

            return ret;
        } catch (final Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            throw new ServiceException(e.getMessage());
        }
    }
    /**
     * 添加资源
     * @param resouce
     * @return
     * @throws ServiceException
     */
    public String addResouceDlInternal(final JSONObject resouce) throws ServiceException {
        String ret = resouce.optString(Keys.OBJECT_ID);

        if (Strings.isEmptyOrNull(ret)) {
            ret = Ids.genTimeMillisId();
            resouce.put(Keys.OBJECT_ID, ret);
        }

        try {
            String resourceName = resouce.optString(ResourceDl.RESOURCE_ENAME);
            String resourceInstruction = resouce.optString(ResourceDl.RESOURCE_INSTRUCTION);
            String resourceUrl = resouce.optString(ResourceDl.RESOURCE_URL);
            String resourceLikeCount = resouce.optString(ResourceDl.RESOURCE_LIKE_COUNT);
            String resourceDlCount = resouce.optString(ResourceDl.RESOURCE_DL_COUNT);

            resouce.put(ResourceDl.RESOURCE_ENAME,resourceName);
            resouce.put(ResourceDl.RESOURCE_URL,resourceUrl);
            resouce.put(ResourceDl.RESOURCE_LIKE_COUNT,resourceLikeCount);
            resouce.put(ResourceDl.RESOURCE_INSTRUCTION,resourceInstruction);
            resouce.put(ResourceDl.RESOURCE_ENAME,resourceName);
            resouce.put(ResourceDl.RESOURCE_DL_COUNT,resourceDlCount);

            final Date date = new Date();

            if (!resouce.has(ResourceDl.RESOURCE_CREATE_DATE)) {
                resouce.put(ResourceDl.RESOURCE_CREATE_DATE, date);
            }
            resouce.put(ResourceDl.RESOURCE_UPDATE_DATE,date);

            resourceDlRepository.add(resouce);
        } catch (final RepositoryException e) {
            LOGGER.log(Level.ERROR, "Adds an Resource failed", e);

            throw new ServiceException(e);
        }

        return ret;
    }


}
