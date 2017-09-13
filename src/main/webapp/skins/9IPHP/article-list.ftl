<div class="module" >
    <#list articles as article>
    <article class="post ">
    <#-- RZX ADD -->
        <div class="post-list">
        <#--<div class="img-at-icon ">
        <#if article.articleAbstractIcon?exists>
            <img src="${article.articleAbstractIcon}" alt="${article.articleTitle}" title="${article.articleTitle}" />
        </#if>
        </div>-->
        <main class="content-reset fn-clear" style="padding-top:20px;padding-left: 10px">
            <h6>
            <a  rel="bookmark" href="${servePath}${article.articlePermalink}">
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
                <#--RZX去掉list中的标签
                <#list article.articleTags?split(",") as articleTag>
                    <a class="tag fn-right list-tags"  rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                    [${articleTag}]&nbsp;</a>
                </#list>
                <span class="fn-right tooltipped tag" aria-label="Author">
                By/${article.articleAuthorName}
                -->
            </span>
            </h6>
            <footer class="fn-clear">
            <div class="meta">
                 ${article.articleAbstract}
                 <div><span style="border-bottom: 1px #ee8690 dashed">By/${article.articleAuthorName}</span>/日期：${article.articleCreateDate?string("yyyy-MM-dd HH:mm:ss")}/<a href="${servePath}${article.articlePermalink}#comments">
                 ${article.articleCommentCount} ${commentLabel}</a>/${article.articleViewCount} ${viewLabel}
                 <a href="${servePath}${article.articlePermalink}#more" rel="contents" class="fn-right tooltipped tooltipped-n">${readLabel} &raquo;</a>
                 </div>

            </div>
            </footer>
        </main>
        </div>
    </article>
    </#list>
    <#if 0 != paginationPageCount>
        <div class="fn-clear">
            <nav class="pagination fn-right">
                <#if 1 != paginationPageNums?first>
                <a href="${servePath}${path}/${paginationPreviousPageNum}" class="page-number">&laquo;</a>
                    <a class="page-number" href="${servePath}${path}/1">1</a> <span class="page-number">...</span>
                </#if>
                <#list paginationPageNums as paginationPageNum>
                <#if paginationPageNum == paginationCurrentPageNum>
                <span class="page-number current">${paginationPageNum}</span>
                <#else>
                <a class="page-number" href="${servePath}${path}/${paginationPageNum}">${paginationPageNum}</a>
                </#if>
                </#list>
                <#if paginationPageNums?last != paginationPageCount> <span class="page-number">...</span>
                <a href="${servePath}${path}/${paginationPageCount}" class="page-number">${paginationPageCount}</a>
                <a href="${servePath}${path}/${paginationNextPageNum}" class="page-number">&raquo;</a>
                </#if>
            </nav>
        </div>
    </#if>
     
