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
                <header><h1><i class="fa fa-list-ol"></i> ${categoryLabel}</h1></header>
                <main>
                    <#list mostUsedCategories as category>
                        <a  href="${servePath}/category/${category.categoryURI}"
                           aria-label="${category.categoryTagCnt} ${cntLabel}${tagsLabel}"
                           class="tag tooltipped tooltipped-n " >
                               <i class="fa fa-globe pdlf-2"></i> ${category.categoryTitle}</a>
                    </#list>
                </main>
            </div>
        </#if>
        <br/>
        <#if 0 != mostUsedTags?size>
            <div id="tagc" class="module">
                <header><h1><i class="fa fa-tags"></i> ${tagsLabel}</h1></header>
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
              <#--  <div class="module">
                  &lt;#&ndash;  <div class="card-header">
                        <ul class="tab-nav">
                            <li class="active"><header><i class="fa fa-eyedropper"></i> ${mostViewCountArticlesLabel}</header></li>
                            <li class=""> <header><i class="fa fa-comment"></i> ${mostCommentArticlesLabel}</header></li>
                        </ul>
                    </div>
                    <div class="tab-cont" style="display: block;">&ndash;&gt;-->
                    <#if 0 != mostViewCountArticles?size>
                        <div class="module">
                            <header><h1><i class="fa fa-eyedropper"></i> ${mostViewCountArticlesLabel}</h1></header>
                            <main class="list">
                                <ul>
                                    <#list mostViewCountArticles as article>
                                        <li>
                                            <img class=" ag_image fn-left" src="${article.articleAbstractIcon}" alt="${article.articleTitle}" title="${article.articleTitle}" />
                                            <div>
                                            <a  rel="nofollow" class="tooltipped tooltipped-e" href="${servePath}${article.articlePermalink}">
                                                 ${article.articleTitle}
                                            </a>
                                            <span class="tooltipped tooltipped-n" aria-label="${createDateLabel}">
                                                <i class="fa fa-calendar"></i>
                                                <time>
                                                ${article.articleCreateDate?string("yyyy-MM-dd")}
                                                </time>
                                            </span>&nbsp;
                                            <span class="tooltipped tooltipped-n" aria-label="${viewCountLabel}">
                                                 <i class="fa fa-eye"></i> ${article.articleViewCount}
                                            </span>
                                            </div>
                                        </li>

                                    </#list>
                                </ul>
                            </main>
                        </div>
                    </#if>
                    <#if 0 != mostCommentArticles?size>
                        <div class="module">
                            <header><h1><i class="fa fa-comment"></i> ${mostCommentArticlesLabel}</h1></header>
                            <main class="list">
                                <ul>
                                    <#list mostCommentArticles as article>
                                        <li>
                                            <img  class="ag_image fn-left " src="${article.articleAbstractIcon}" alt="${article.articleTitle}" title="${article.articleTitle}" />
                                            <div class="fn-clear">
                                                <a rel="nofollow" class="tooltipped tooltipped-e" href="${servePath}${article.articlePermalink}">
                                                ${article.articleTitle}
                                                </a>
                                                <span class="tooltipped tooltipped-n" aria-label="${createDateLabel}">
                                                <i class="fa fa-calendar"></i>
                                                <time>
                                                ${article.articleCreateDate?string("yyyy-MM-dd")}
                                                </time>
                                            </span>&nbsp;
                                                <span class="tooltipped tooltipped-n fn-clear" aria-label="${commentCountLabel}">
                                                 <i class="fa fa-comments"></i> ${article.articleCommentCount}
                                            </span>
                                            </div>
                                        </li>
                                    </#list>
                                </ul>
                            </main>
                        </div>
                    </#if>
    </section>
</aside>