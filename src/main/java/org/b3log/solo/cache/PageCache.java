/*
 * Copyright (c) 2010-2017, b3log.org & hacpai.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.b3log.solo.cache;

import org.b3log.latke.Keys;
import org.b3log.latke.cache.Cache;
import org.b3log.latke.cache.CacheFactory;
import org.b3log.latke.ioc.inject.Named;
import org.b3log.latke.ioc.inject.Singleton;
import org.b3log.solo.model.Page;
import org.b3log.solo.util.JSONs;
import org.json.JSONObject;

/**
 * Page cache.
 *
 * @author <a href="http://88250.b3log.org">Liang Ding</a>
 * @version 1.0.0.0, Jul 18, 2017
 * @since 2.3.0
 */
@Named
@Singleton
public class PageCache {

    /**
     * Page cache.
     */
    private static final Cache PAGE_CACHE = CacheFactory.getCache(Page.PAGES);

    static {
        PAGE_CACHE.setMaxCount(128);
    }

    /**
     * Gets a page by the specified page id.
     *
     * @param id the specified page id
     * @return page, returns {@code null} if not found
     */
    public JSONObject getPage(final String id) {
        final JSONObject page = PAGE_CACHE.get(id);
        if (null == page) {
            return null;
        }

        return JSONs.clone(page);
    }

    /**
     * Adds or updates the specified page.
     *
     * @param page the specified page
     */
    public void putPage(final JSONObject page) {
        final String pageId = page.optString(Keys.OBJECT_ID);

        PAGE_CACHE.put(pageId, JSONs.clone(page));
    }

    /**
     * Removes an page by the specified page id.
     *
     * @param id the specified page id
     */
    public void removePage(final String id) {
        PAGE_CACHE.remove(id);
    }
}
