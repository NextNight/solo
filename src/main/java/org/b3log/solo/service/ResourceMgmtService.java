package org.b3log.solo.service;

import org.b3log.latke.Keys;
import org.b3log.latke.ioc.inject.Inject;
import org.b3log.latke.logging.Level;
import org.b3log.latke.logging.Logger;
import org.b3log.latke.model.*;
import org.b3log.latke.repository.Query;
import org.b3log.latke.repository.RepositoryException;
import org.b3log.latke.repository.SortDirection;
import org.b3log.latke.repository.Transaction;
import org.b3log.latke.service.ServiceException;
import org.b3log.latke.service.annotation.Service;
import org.b3log.latke.util.Ids;
import org.b3log.latke.util.Paginator;
import org.b3log.latke.util.Strings;
import org.b3log.solo.model.Resource;
import org.b3log.solo.repository.ResourceRepository;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.Date;
import java.util.List;

import static org.b3log.solo.model.Resource.*;
/**
 * Author:rzx
 * Date:2017/9/6
 */
@Service
public class ResourceMgmtService {
    /**
     * Logger.
     */
    private static final Logger LOGGER = Logger.getLogger(ResourceMgmtService.class);

    @Inject
    private ResourceRepository resourceRepository;


    public JSONObject getResources(final JSONObject requestJSONObject) throws ServiceException {
        final JSONObject ret = new JSONObject();

        try {
            final int currentPageNum = requestJSONObject.getInt(Pagination.PAGINATION_CURRENT_PAGE_NUM);
            final int pageSize = requestJSONObject.getInt(Pagination.PAGINATION_PAGE_SIZE);
            final int windowSize = requestJSONObject.getInt(Pagination.PAGINATION_WINDOW_SIZE);

            final Query query = new Query().setCurrentPageNum(currentPageNum).setPageSize(pageSize).addSort(Resource.RESOURCE_DL_COUNT, SortDirection.DESCENDING);
            final JSONObject result = resourceRepository.get(query);
            int resourceCount =result.length();
            final int pageCount = (int) Math.ceil((double) resourceCount / (double) pageSize);
            query.setPageCount(pageCount);
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
                resource.put(RESOURCE_CREATE_TIME, ((Date) resource.get(RESOURCE_CREATE_TIME)).getTime());
                resource.put(RESOURCE_UPDATE_TIME, ((Date) resource.get(RESOURCE_UPDATE_TIME)).getTime());
                resource.put(RESOURCE_NAME,resource.opt(RESOURCE_NAME));
                resource.put(RESOURCE_URL,resource.opt(RESOURCE_URL));
                // Remove unused properties
                for (int j = 0; j < excludes.length(); j++) {
                    resource.remove(excludes.optString(j));
                }
            }

            ret.put(RESOURCES, resources);

            return ret;
        } catch (final Exception e) {
            LOGGER.log(Level.ERROR, "Gets resource failed", e);
            throw new ServiceException(e);
        }
    }
    /**
     * 添加资源
     * @param requestJSONObject
     * @return
     */
    public String addResouce(final JSONObject requestJSONObject) throws ServiceException {
        final Transaction transaction = resourceRepository.beginTransaction();

        try {
            final JSONObject resource = requestJSONObject.getJSONObject(Resource.RESOURCE);

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
            String resourceName = resouce.optString(Resource.RESOURCE_NAME);
            String resourceInstruction = resouce.optString(Resource.RESOURCE_INSTRUCTION);
            String resourceUrl = resouce.optString(Resource.RESOURCE_URL);
            String resourceLikeCount = resouce.optString(Resource.RESOURCE_LIKE_COUNT);
            String resourceDlCount = resouce.optString(Resource.RESOURCE_DL_COUNT);

            resouce.put(Resource.RESOURCE_NAME,resourceName);
            resouce.put(Resource.RESOURCE_URL,resourceUrl);
            resouce.put(Resource.RESOURCE_LIKE_COUNT,resourceLikeCount);
            resouce.put(Resource.RESOURCE_INSTRUCTION,resourceInstruction);
            resouce.put(Resource.RESOURCE_NAME,resourceName);
            resouce.put(Resource.RESOURCE_DL_COUNT,resourceDlCount);

            final Date date = new Date();

            if (!resouce.has(Resource.RESOURCE_CREATE_TIME)) {
                resouce.put(Resource.RESOURCE_CREATE_TIME, date);
            }
            resouce.put(Resource.RESOURCE_UPDATE_TIME,date);

            resourceRepository.add(resouce);
        } catch (final RepositoryException e) {
            LOGGER.log(Level.ERROR, "Adds an Resource failed", e);

            throw new ServiceException(e);
        }

        return ret;
    }

    public void setResourceRepository(ResourceRepository resourceRepository) {
        this.resourceRepository = resourceRepository;
    }
}
