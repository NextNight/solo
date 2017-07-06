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
                <header><h1><i class="icon-list-ol">${categoryLabel}</i></h1></header>
                <main>
                    <#list mostUsedCategories as category>
                        <a  href="${servePath}/category/${category.categoryURI}"
                           aria-label="${category.categoryTagCnt} ${cntLabel}${tagsLabel}"
                           class="tag tooltipped tooltipped-n">
                                ${category.categoryTitle}</a>
                    </#list>
                </main>
            </div>
        </#if>
        <br/>
        <#if 0 != mostUsedTags?size>
            <div id="tagc" class="module">
                <header><h1><i class="icon-list-ol">${tagsLabel}</i></h1></header>
                <main>
                    <#list mostUsedTags as tag>
                        <a  data-count="${tag.tagPublishedRefCount}"
                           href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}"
                           class="tag tooltipped tooltipped-n tagc${tag_index%5}"
                           aria-label="${tag.tagPublishedRefCount} ${countLabel}${articleLabel}">
                                ${tag.tagTitle}(${tag.tagPublishedRefCount})</a>
                    </#list>
                </main>
            </div>
        </#if>
            <!--<div class="panel-hd">按钮</div>-->
                <div class="module card">
                    <div class="card-header">
                        <ul class="tab-nav">
                            <li class="active"> <header>${mostCommentArticlesLabel}</header></li>
                            <li class=""><header>${mostViewCountArticlesLabel}</header></li>
                        </ul>
                    </div>
                    <div class="tab-cont" style="display: block;">
                    <#if 0 != mostCommentArticles?size>
                        <div class="module">
                            <main class="list">
                                <ul>
                                    <#list mostCommentArticles as article>
                                        <li>
                                            <a rel="nofollow" aria-label="${article.articleCommentCount} ${commentLabel}"
                                               class="tooltipped tooltipped-e"
                                               href="${servePath}${article.articlePermalink}">
                                                <img style="" class=" ag_image" src="${article.articleAbstractIcon}" alt="${article.articleTitle}" title="${article.articleTitle}" />
                                                ${article.articleTitle}
                                            </a>
                                        </li>
                                    </#list>
                                </ul>
                            </main>
                        </div>
                    </#if>
                    </div>
                    <div class="tab-cont" style="display: none;">
                    <#if 0 != mostViewCountArticles?size>
                        <div class="module">
                            <main class="list">
                                <ul>
                                    <#list mostViewCountArticles as article>
                                        <li>
                                            <a id="tagc" class="tagc${article_index%3}" rel="nofollow" aria-label="${article.articleCommentCount} ${commentLabel}"
                                               class="tooltipped tooltipped-e"
                                               href="${servePath}${article.articlePermalink}">
                                              <img class=" ag_image" src="${article.articleAbstractIcon}" alt="${article.articleTitle}" title="${article.articleTitle}" />
                                                 ${article.articleTitle}
                                            </a>
                                        </li>
                                    </#list>
                                </ul>
                            </main>
                        </div>
                    </#if>
                    </div>
                </div>
    </section>
</aside>