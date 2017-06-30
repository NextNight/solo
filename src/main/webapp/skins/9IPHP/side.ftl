<aside>
    <section>
        <#include "side-head.ftl">
        <div class="module meta">
            <main class="fn-clear">
                <img src="${adminUser.userAvatar}" aria-label="${adminUser.userName}"/>
                <div class="fn-right">
                    <a href="${servePath}/archives.html">
                    ${statistic.statisticPublishedBlogArticleCount}
                        <span class="ft-gray">${articleLabel}</span></a><br/>
                    <a href="${servePath}/dynamic.html">
                    ${statistic.statisticPublishedBlogCommentCount}
                        <span class="ft-gray">${commentLabel}</span></a><br/>
                ${statistic.statisticBlogViewCount} <span class="ft-gray">${viewLabel}</span><br/>
                ${onlineVisitorCnt} <span class="ft-gray">${onlineVisitorLabel}</span>
                </div>
            </main>
        </div>
        <#if noticeBoard??>
            <div class="ad content-reset">
                ${noticeBoard}
            </div>
        </#if>
        <#if 0 != mostUsedCategories?size>
            <div class="module">
                <header><h2>${categoryLabel}</h2></header>
                <main>
                    <#list mostUsedCategories as category>
                        <a href="${servePath}/category/${category.categoryURI}"
                           aria-label="${category.categoryTagCnt} ${cntLabel}${tagsLabel}"
                           class="tag tooltipped tooltipped-n">
                                ${category.categoryTitle}</a>
                    </#list>
                </main>
            </div>
        </#if>

        <#if 0 != mostUsedTags?size>
            <div id="tagscloud" class="module ">
                <header><h2>${tagsLabel}</h2></header>
                <main>
                    <#list mostUsedTags as tag>
                        <a class = "tagc${tag_index%5}" rel="tag" data-count="${tag.tagPublishedRefCount}"
                           href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}"
                           class="tag tooltipped tooltipped-n"
                           aria-label="${tag.tagPublishedRefCount} ${countLabel}${articleLabel}">
                                ${tag.tagTitle}(${tag.tagPublishedRefCount})</a>
                    </#list>
                </main>
            </div>
        </#if>

        <#if 0 != mostCommentArticles?size>
            <div class="module">
                <header><h2>${mostCommentArticlesLabel}</h2></header>
                <main class="list">
                    <ul>
                        <#list mostCommentArticles as article>
                            <li>
                                <a rel="nofollow" aria-label="${article.articleCommentCount} ${commentLabel}"
                                   class="tooltipped tooltipped-e"
                                   href="${servePath}${article.articlePermalink}">
                                    <i class=" icon-star-empty " style="color: red"></i>${article.articleTitle}
                                </a>
                            </li>
                        </#list>
                    </ul>
                </main>
            </div>
        </#if>

        <#if 0 != mostViewCountArticles?size>
            <div class="module">
                <header><h2>${mostViewCountArticlesLabel}</h2></header>
                <main class="list">
                    <ul>
                        <#list mostViewCountArticles as article>
                            <li>
                                <a rel="nofollow" aria-label="${article.articleCommentCount} ${commentLabel}"
                                   class="tooltipped tooltipped-e"
                                   href="${servePath}${article.articlePermalink}">
                                    <i class=" icon-heart" style="color: red"></i>${article.articleTitle}
                                </a>
                            </li>
                        </#list>
                    </ul>
                </main>
            </div>
        </#if>
    </section>
</aside>