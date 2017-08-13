<#include "macro-head.ftl">
<#include "macro-comments.ftl">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
    <head>
        <@head title="${article.articleTitle} - ${blogTitle}">
        <meta name="keywords" content="${article.articleTags}" />
        <meta name="description" content="${article.articleAbstract?html}" />
        </@head>
        <#if previousArticlePermalink??>
            <link rel="prev" title="${previousArticleTitle}" href="${servePath}${previousArticlePermalink}">
        </#if>
        <#if nextArticlePermalink??>
            <link rel="next" title="${nextArticleTitle}" href="${servePath}${nextArticlePermalink}">
        </#if>
    </head>
    <body>
        <#include "header.ftl">
        <div class="wrapper">
            <div class="main-wrap">
                <main>
                    <article class="post">
                        <header>
                            <span class="text-center">
                            <h1>
                                <a  rel="bookmark"  href="${servePath}${article.articlePermalink}">
                                    ${article.articleTitle}
                                </a>
                                <#if article.articlePutTop>
                                    <sup>
                                        ${topArticleLabel}
                                    </sup>
                                </#if>
                                <#if article.hasUpdated>
                                    <sup>
                                        ${updatedLabel}
                                    </sup>
                                </#if>
                            </h1>
                            </span>
                            <#--2017/8/11注释掉浏览相关信息 -->
                            <#--<div class="meta">
                                <span class="tooltipped tooltipped-n" aria-label="${createDateLabel}">
                                    <i class="fa fa-calendar"></i>
                                    <time>
                                        ${article.articleCreateDate?string("yyyy-MM-dd")}
                                    </time>
                                </span>
                                                &nbsp; | &nbsp;
                                                <span class="tooltipped tooltipped-n" aria-label="${commentCountLabel}">
                                    <i class="fa fa-comments"></i>
                                    <a href="${servePath}${article.articlePermalink}#comments">
                                        ${article.articleCommentCount} ${commentLabel}</a>
                                </span>
                                                &nbsp; | &nbsp;
                                                <span class="tooltipped tooltipped-n" aria-label="${viewCountLabel}">
                                    <i class="fa fa-eye-open"></i>
                                    ${article.articleViewCount} ${viewLabel}
                                                &nbsp; | &nbsp;
                                                <span class="tooltipped tooltipped-n" aria-label="Author">
                                    <i class="fa fa-user"></i>
                                                ${article.articleAuthorName}
                                </span>
                            </div>-->
                        </header>

                        <div class="content-reset">
                            ${article.articleContent}
                             <p style="text-align: center;margin: 5px;font-weight: 700"> . - - —— ————THE END——— —— - - .</p>
                            <#if "" != article.articleSign.signHTML?trim>
                                <div>
                                    ${article.articleSign.signHTML}
                                </div>
                            </#if>
                        </div>

                        <footer class="tags">
                            <#list article.articleTags?split(",") as articleTag>
                                <a class="tag" rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                                    ${articleTag}</a>
                            </#list>
                                <div class="fn-right">
                                    分享到：
                                    <a   title="分享到微博" href="http://v.t.sina.com.cn/share/share.php?url=${servePath}${article.articlePermalink}&title=${article.articleTitle}">
                                        <i class="fa fa-weibo share-i" style="font-size: 20px"></i>
                                    </a>
                                          <i class="fa fa-weixin share-i" style="font-size: 20px"></i>
                                    <a   title="分享到腾讯微博" href="http://v.t.qq.com/share/share.php?url=${servePath}${article.articlePermalink}">
                                        <i class="fa fa-qq share-i" style="font-size: 20px" ></i>
                                        </a>
                                </div>
                            <#-- <div class="copyright">
                                ${articleCP1Label}
                                <a rel="bookmark" href="${servePath}${article.articlePermalink}">
                                    ${article.articleTitle}
                                </a> -
                                <a href="${servePath}">
                                    ${blogTitle}
                                </a>
                            </div-->

                            <div class="rel fn-clear" style="border-bottom: 1px solid wheat">
                                <#if previousArticlePermalink??>
                                    <a href="${servePath}${previousArticlePermalink}" rel="prev"
                                       class="fn-left tooltipped tooltipped-n"
                                       aria-label="${previousArticleTitle}">
                                        ${previousArticleLabel}
                                    </a>
                                </#if>
                                <#if nextArticlePermalink??>
                                    <a href="${servePath}${nextArticlePermalink}" rel="next"
                                       class="fn-right tooltipped tooltipped-n"
                                       aria-label="${nextArticleTitle}">
                                        ${nextArticleLabel}
                                    </a>
                                </#if>
                            </div>
                        </footer>
                        <div id="relevantArticles" class=" module fn-clear"  ></div>
                        <div id="externalRelevantArticles" class=" module fn-clear"></div>
                        <div id="randomArticles" class=" module fn-clear" ></div>
                    <@comments commentList=articleComments article=article></@comments>
                    </article>
                </main>
            <#include "side.ftl">
            </div>
        </div>
        <#include "footer.ftl">
        <@comment_script oId=article.oId>
        page.tips.externalRelevantArticlesDisplayCount = "${externalRelevantArticlesDisplayCount}";
            <#if 0 != randomArticlesDisplayCount>
            page.loadRandomArticles();
            </#if>
            <#if 0 != externalRelevantArticlesDisplayCount>
            page.loadExternalRelevantArticles("<#list article.articleTags?split(",") as articleTag>${articleTag}<#if articleTag_has_next>,</#if></#list>"
            , "<header class='title'><h2><i class='fa fa-map-o'></i> ${externalRelevantArticlesLabel}</h2></header>");
            </#if>
            <#if 0 != relevantArticlesDisplayCount>
            page.loadRelevantArticles('${article.oId}', '<header class="title"><h2><i class="fa fa-folder-open-o"></i> ${relevantArticlesLabel}</h2></header>');
            </#if>
        </@comment_script>
    </body>
</html>