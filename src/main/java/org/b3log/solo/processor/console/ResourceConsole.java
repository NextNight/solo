package org.b3log.solo.processor.console;

import org.apache.commons.lang.StringUtils;
import org.b3log.latke.Keys;
import org.b3log.latke.Latkes;
import org.b3log.latke.ioc.inject.Inject;
import org.b3log.latke.logging.Level;
import org.b3log.latke.logging.Logger;
import org.b3log.latke.model.User;
import org.b3log.latke.service.LangPropsService;
import org.b3log.latke.service.ServiceException;
import org.b3log.latke.servlet.HTTPRequestContext;
import org.b3log.latke.servlet.HTTPRequestMethod;
import org.b3log.latke.servlet.annotation.RequestProcessing;
import org.b3log.latke.servlet.annotation.RequestProcessor;
import org.b3log.latke.servlet.renderer.JSONRenderer;
import org.b3log.latke.util.Requests;
import org.b3log.solo.model.Article;
import org.b3log.solo.model.Resource;
import org.b3log.solo.service.ArticleMgmtService;
import org.b3log.solo.service.ResourceMgmtService;
import org.b3log.solo.service.UserQueryService;
import org.b3log.solo.util.QueryResults;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Author:rzx
 * Date:2017/9/7
 */
@RequestProcessor
public class ResourceConsole {
    /**
     * Logger.
     */
    private static final Logger LOGGER = Logger.getLogger(ArticleConsole.class.getName());

    @Inject
    private ResourceMgmtService resourceMgmtService;
    @Inject
    private UserQueryService userQueryService;
    @Inject
    private LangPropsService langPropsService;

    @RequestProcessing(value = "/console/resource/", method = HTTPRequestMethod.POST)
    public void addResource(final HttpServletRequest request, final HttpServletResponse response, final HTTPRequestContext context)
            throws Exception {
        if (!userQueryService.isLoggedIn(request, response)) {
            response.sendError(HttpServletResponse.SC_FORBIDDEN);
            return;
        }

        final JSONRenderer renderer = new JSONRenderer();

        context.setRenderer(renderer);

        final JSONObject ret = new JSONObject();

        try {
            final JSONObject requestJSONObject = Requests.parseRequestJSONObject(request, response);

            // final JSONObject currentUser = userQueryService.getCurrentUser(request);

            final String resourceId = resourceMgmtService.addResouce(requestJSONObject);

            ret.put(Keys.OBJECT_ID, resourceId);
            ret.put(Keys.MSG, langPropsService.get("addSuccLabel"));
            ret.put(Keys.STATUS_CODE, true);

            renderer.setJSONObject(ret);
        } catch (final ServiceException e) {
            LOGGER.log(Level.ERROR, e.getMessage());

            final JSONObject jsonObject = QueryResults.defaultResult();

            renderer.setJSONObject(jsonObject);
            jsonObject.put(Keys.MSG, e.getMessage());
        }
    }

    @RequestProcessing(value = "/console/resources/*/*/*", method = HTTPRequestMethod.GET)
    public void getResources(final HttpServletRequest request, final HttpServletResponse response, final HTTPRequestContext context)
            throws Exception {
        if (!userQueryService.isLoggedIn(request, response)) {
            response.sendError(HttpServletResponse.SC_FORBIDDEN);
            return;
        }

        final JSONRenderer renderer = new JSONRenderer();

        context.setRenderer(renderer);

        try {
            String path = request.getRequestURI().substring((Latkes.getContextPath() + "/console/resources").length());
            final String status = StringUtils.substringBefore(path, "/");

            path = path.substring((status + "/").length());

            final JSONObject requestJSONObject = Requests.buildPaginationRequest(path);

            final JSONArray excludes = new JSONArray();

            excludes.put(Resource.RESOURCE_NAME);
            excludes.put(Resource.RESOURCE_URL);
            excludes.put(Resource.RESOURCE_DL_COUNT);
            excludes.put(Resource.RESOURCE_LIKE_COUNT);
            excludes.put(Resource.RESOURCE_INSTRUCTION);
            requestJSONObject.put(Keys.EXCLUDES, excludes);

            final JSONObject result = resourceMgmtService.getResources(requestJSONObject);

            result.put(Keys.STATUS_CODE, true);
            renderer.setJSONObject(result);
        } catch (final Exception e) {
            LOGGER.log(Level.ERROR, e.getMessage(), e);

            final JSONObject jsonObject = QueryResults.defaultResult();

            renderer.setJSONObject(jsonObject);
            jsonObject.put(Keys.MSG, langPropsService.get("getFailLabel"));
        }
    }
}
