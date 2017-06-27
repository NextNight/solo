<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${blogTitle}">
        <#if metaKeywords??>
        <meta name="keywords" content="${metaKeywords}"/>
        </#if>
        <#if metaDescription??>
        <meta name="description" content="${metaDescription}"/>
        </#if>
        <#if 0 != paginationPageCount>
            <#if paginationCurrentPageNum == 1><#-- 首页 -->
                <#if 1 < paginationPageCount>
                    <link rel="next" type="text/html" href="${servePath}/2">
                </#if>
            <#elseif paginationCurrentPageNum == paginationPageCount><#-- 尾页 -->
                <link rel="prev" type="text/html" href="${servePath}/${paginationPageCount - 1}">
            <#else><#-- 中间页 -->
                <link rel="prev" type="text/html" href="${servePath}/${paginationCurrentPageNum - 1}">
                <link rel="next" type="text/html" href="${servePath}/${paginationCurrentPageNum + 1}">
            </#if>
        </#if>
        </@head>
    </head>
    <body>
        <#include "header.ftl">
        <div class="wrapper">
            <div class="main-wrap">
                <main>
                    <#include "article-list.ftl">
                </main>
                <#include "side.ftl">
            </div>
        </div>
        <#include "footer.ftl">
    </body>
</html>