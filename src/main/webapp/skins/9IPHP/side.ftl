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
        <#--下载列表-->
            <div class="module">
                <header ><h1><i class="fa fa-bandcamp"></i> JAVA必读书籍<a href="${servePath}/articles/2017/09/15/1505464078079.html" style="font-size:12px;color: #ee8690">下载须知</a>
                    <a href="#" class="fn-right" title="more"> <i class="fa fa-angle-double-right"></i></a></h1>
                </header>
                <main >
                    <marquee direction="up" onMouseOut="this.start()" onMouseOver="this.stop()"  behavior="alternate" loop=-1 truespeed="truespeed" height="150px"  scrolldelay="100" scrollamount=" 1">
                    <#list resources as resource>
                        <div style="padding-bottom: 5px">
                                <i class="fa fa-file-pdf-o" style="color: #ee8690"></i>&nbsp;&nbsp;<a href="#" title="${resource.resourceInstruction}">${resource.resourceName}</a>
                            <div class="fn-right pdlf-20" >
                                <a href="${resource.resourceUrl}" target="_blank" style="color: #6fc7d3" title="开始下载"><i class="fa fa-cloud-download"></i></a>&nbsp;
                                <a href="#" style="color: #ee8690"><i class="fa fa-heart-o pdlf-20"></i>  ${resource.resourceLikeCount}</a>
                            </div>
                        </div>
                    </#list>
                    </marquee>
                </main>
            </div>
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

    </section>
</aside>