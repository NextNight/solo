<aside xmlns="http://www.w3.org/1999/html">
    <section>
        <#include "side-head.ftl">
        <div class="module meta">
            <fieldset style="border:1px threedface solid" >
                <legend>数据统计</legend>
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
            </fieldset>
        </div>
        <#if noticeBoard??>
            <div class="ad content-reset">
                ${noticeBoard}
            </div>
        </#if>
            <#--常用站点-->
        <#include "common-wesite.ftl">
        <#if 0 != mostUsedCategories?size>
            <div class="module">
                <header><h1><i class="fa fa-connectdevelop"></i> ${categoryLabel}</h1></header>
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
        <#--下载列表-->
        <#if 0 !=resources?size >
        <div class="module" style="border:1px #e9e4e4 solid">
            <header ><h1><i class="fa fa-bandcamp"></i>下载列表</h1></header>
            <main >
                <marquee direction="up" loop=-1 truespeed="truespeed" height="100px"  behavior="scroll" scrolldelay="100" scrollamount=" 1"  >
                <#list resources as resource>
                    <div>
                        ${resource.resourceName}
                        <i class="fa fa-heart-o pdlf-2"></i>2
                        <a herf=""  aria-label="开始下载">${resource.resourceUrl}</a>
                    </div>
                </#list>
                </marquee>
            </main>
        </div>
            </#if>
    </section>
</aside>