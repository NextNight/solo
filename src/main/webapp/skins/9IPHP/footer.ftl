<footer class="footer fn-clear">
    <div style="width: 70%;float: left" >
    &copy; ${year}-07-07
    <a href="${servePath}">${blogTitle}</a>  &nbsp;   • &nbsp;
    <a href="https://hacpai.com/tag/solo" target="_blank">Solo</a> ${version}  <br/>
    Powered by <a rel="nofollow" href="http://b3log.org" target="_blank">B3log</a>开源&nbsp;
    <span class="ft-warn">&heartsuit;</span>
    Theme by <a rel="nofollow" href="https://github.com/9IPHP/9IPHP" target="_blank">9IPHP</a>&<a href="http://vanessa.b3log.org" target="_blank">Vanessa</a>&<a href="${servePath}">Atlas</a>
    </br> ${footerContent}
    </div>
    <div class="title" style="width: 30%;float: left;text-align: left;">
       <div class="fn-left" style="width: 50%">
        <#--友情链接：-->
        <a rel="archive" href="${servePath}/links.html"> ${linkLabel} </a>
                <br> <a href="${servePath}/aboutme.html">关于作者</a><br>
        <a rel="archive" href="${servePath}/sitemap.xml">网站地图</a>
       </div>
        <div class=" pdlf-20">
            <img style="width: 90px;height: 90px;border: 1px whitesmoke solid" src="http://qn.atlasbl.cn/f0e19507a74b44eaaa06f7b9a21cedfa.png" />
        </div>
    </div>
</footer>
<#--RZX ADD-->
<div class="icon-up fa-2x" title="回到顶部" onclick="Util.goTop()"></div>

<script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/skins/${skinDirName}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/skins/${skinDirName}/js/js.js" charset="utf-8"></script>
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
<script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
${plugins}
