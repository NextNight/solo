<footer class="footer fn-clear">
    <div style="width: 70%;float: left" >
    &copy; ${year}
    <a href="${servePath}">${blogTitle}</a>  &nbsp;   • &nbsp;
    <a href="https://hacpai.com/tag/solo" target="_blank">Solo</a> ${version}  <br/>

    Powered by <a rel="nofollow" href="http://b3log.org" target="_blank">B3log</a>开源&nbsp;
    <span class="ft-warn">&heartsuit;</span>
    Theme by <a rel="nofollow" href="https://github.com/9IPHP/9IPHP" target="_blank">9IPHP</a>&<a href="http://vanessa.b3log.org" target="_blank">Vanessa</a>&<a href="${servePath}">Atlas</a>
    </br> ${footerContent}
    </div>
    <div class="title" style="width: 30%;float: left;text-align: left;">
        <#--友情链接：-->
    <a rel="archive" href="${servePath}/links.html">
        ${linkLabel}
    </a>
    <br>关于作者
    </div>
</footer>
<#--RZX ADD-->
<#--<#include "thankArticle.ftl">-->
<div class="icon-up" title="回到顶部" onclick="Util.goTop()"></div>

<script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/skins/${skinDirName}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<script type="text/javascript">
    var latkeConfig = {
        "servePath": "${servePath}",
        "staticServePath": "${staticServePath}",
        "isLoggedIn": "${isLoggedIn?string}",
        "userName": "${userName}"
    };

    var Label = {
        "skinDirName": "${skinDirName}",
        "em00Label": "${em00Label}",
        "em01Label": "${em01Label}",
        "em02Label": "${em02Label}",
        "em03Label": "${em03Label}",
        "em04Label": "${em04Label}",
        "em05Label": "${em05Label}",
        "em06Label": "${em06Label}",
        "em07Label": "${em07Label}",
        "em08Label": "${em08Label}",
        "em09Label": "${em09Label}",
        "em10Label": "${em10Label}",
        "em11Label": "${em11Label}",
        "em12Label": "${em12Label}",
        "em13Label": "${em13Label}",
        "em14Label": "${em14Label}"
    };
</script>
<!-- atlasbl.cn Baidu tongji analytics -->
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?90c94271e74eb14d414c615f6177e5e1";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
${plugins}
