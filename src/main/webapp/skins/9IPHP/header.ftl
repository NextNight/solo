<header>
    <div class="banner">
        <div class="fn-clear wrapper text-center">
            <h1 class="fn-inline">
                <a href="${servePath}" rel="start">
                    ${blogTitle}
                </a>
            </h1></br>
            <small> &nbsp; ${blogSubtitle}</small>

        </div>
    </div>

    <div class="navbar">
        <div class="fn-clear wrapper">
            <nav class="fn-left">
                <a href="${servePath}">
                    <i class="fa fa-home"></i>
                    ${indexLabel}
                </a>
                <#list pageNavigations as page>
                    <a href="${page.pagePermalink}" target="${page.pageOpenTarget}" rel="section">
                        ${page.pageTitle}
                    </a>
                </#list>
                <a href="${servePath}/dynamic.html" rel="section">
                    <i class="fa fa-refresh"></i> ${dynamicLabel}
                </a>
                <a href="${servePath}/tags.html" rel="section">
                    <i class="fa fa-tags"></i> ${allTagsLabel}
                </a>
                <a href="${servePath}/archives.html">
                    <i class="fa fa-inbox"></i> ${archiveLabel}
                </a>
                <a rel="alternate" href="${servePath}/blog-articles-rss.do" rel="section">
                    <i class="fa fa-rss"></i> RSS
                </a>
                <a href="${servePath}/aboutme.html">
                    <i class="fa fa-yelp"></i> 关于作者
                </a>
            </nav>
            <#--RZX
                移除搜索框，到side-head
             change -->
            <nav class="fn-right">
            <#if isLoggedIn>
                <a href="${servePath}/admin-index.do#main" title="CurrentAdmin">
                    <i class=" fa fa-user" ></i> ${userName}
                </a>
                <a href="${servePath}/admin-index.do#main" title="${adminLabel}">
                    <i class=" fa fa-cogs"></i> ${adminLabel}
                </a>
                <a href="${logoutURL}" title="${logoutLabel}">
                    <i class="fa fa-power-off"></i> ${logoutLabel}
                </a>
            <#else>
                <a href="${loginURL}">
                    <i class=" fa fa-user"></i> ${loginLabel}
                </a>
                <a href="${servePath}/register">
                    <i class="fa fa-user-md"></i> ${registerLabel}
                </a>
            </#if>
            </nav>
        </div>
    </div>
</header>
<div class="responsive fn-none">
    <i class="fa fa-list"></i>
    <ul class="list">
        <#if isLoggedIn>
            <li>
                <a href="${servePath}/admin-index.do#main" title="${adminLabel}">
                    <i class="fa fa-setting"></i> ${adminLabel}
                </a>
            </li>
            <li>
                <a href="${logoutURL}">
                    <i class="fa fa-power-off"></i> ${logoutLabel}
                </a>
            </li>
            <#else>
                <li>
                    <a href="${loginURL}">
                        <i class="fa fa-sign-in"></i> ${loginLabel}
                    </a>
                </li>
                <li>
                    <a href="${servePath}/register">
                        <i class="fa fa-user-md"></i> ${registerLabel}
                    </a>
                </li>
        </#if>
        <li>
            <a href="${servePath}">
                <i class="fa fa-home"></i>
                ${indexLabel}
            </a>
        </li>
        <#list pageNavigations as page>
            <li>
                <a href="${page.pagePermalink}" target="${page.pageOpenTarget}" rel="section">
                    ${page.pageTitle}
                </a>
            </li>
        </#list>
        <li>
            <a href="${servePath}/dynamic.html" rel="section">
                <i class="fa fa-refresh"></i> ${dynamicLabel}
            </a>
        </li>
        <li>
            <a href="${servePath}/tags.html" rel="section">
                <i class="fa fa-tags"></i> ${allTagsLabel}
            </a>
        </li>
        <li>
            <a href="${servePath}/archives.html">
                <i class="fa fa-inbox"></i> ${archiveLabel}
            </a>
        </li>
        <li>
            <a rel="archive" href="${servePath}/links.html">
                <i class="fa fa-link"></i> ${linkLabel}
            </a>
        </li>
        <li>
            <a rel="alternate" href="${servePath}/blog-articles-rss.do" rel="section">
                <i class="fa fa-rss"></i> RSS
            </a>
        </li>
    </ul>
</div>
