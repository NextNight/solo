package org.b3log.solo.service;

import org.b3log.latke.model.User;
import org.b3log.solo.AbstractTestCase;
import org.b3log.solo.model.Resource;
import org.json.JSONObject;
import org.testng.Assert;
import org.testng.annotations.Test;

import java.util.Date;

/**
 * Author:rzx
 * Date:2017/9/7
 */
@Test(suiteName = "service")
public class ResourceMgmtServiceTestCase extends AbstractTestCase {
        /**
         * Init.
         *
         * @throws Exception exception
         */
        @Test
        public void init() throws Exception {
            final InitService initService = getInitService();

            final JSONObject requestJSONObject = new JSONObject();
            requestJSONObject.put(User.USER_EMAIL, "test@gmail.com");
            requestJSONObject.put(User.USER_NAME, "Admin");
            requestJSONObject.put(User.USER_PASSWORD, "pass");

            initService.init(requestJSONObject);

            final UserQueryService userQueryService = getUserQueryService();
            Assert.assertNotNull(userQueryService.getUserByEmail("test@gmail.com"));
        }

        /**
         * Add Article.
         *
         * @throws Exception exception
         */
        @Test(dependsOnMethods = "init")
        public void addResouceDl() throws Exception {
            final ResourceMgmtService resourceDlMgmtServic = getResourceDlMgmtService();

            final JSONObject requestJSONObject = new JSONObject();
            final JSONObject resource = new JSONObject();
            requestJSONObject.put(Resource.RESOURCE, resource);

            resource.put(Resource.RESOURCE_NAME, "java入门值南");
            resource.put(Resource.RESOURCE_URL, "java入门值南");
            resource.put(Resource.RESOURCE_LIKE_COUNT, 2);
            resource.put(Resource.RESOURCE_DL_COUNT, 2);
            resource.put(Resource.RESOURCE_INSTRUCTION, "介绍");
            resource.put(Resource.RESOURCE_CREATE_TIME, new Date());
            resource.put(Resource.RESOURCE_UPDATE_TIME, new Date());

            final String resouceDlId = resourceDlMgmtServic.addResource(requestJSONObject);
            System.out.println(resouceDlId);
            Assert.assertNotNull(resouceDlId);
        }
}
