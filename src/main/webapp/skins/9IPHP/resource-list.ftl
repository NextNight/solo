<div class="module" style="width: 100%">
    <div class="area ">
        <div id=js class="js">
            <div class="box01">
                <img  src="http://static.qifeiye.com/caches/803caf944d2d1ffc0f4dabb6bb35ba35/aHR0cDovLzU1Y2MxMmYyMjA5YTkudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNy8wNi8xNDk3ODgwMDU4NTk0N2Q1ZmE3MWE5YTk1MS0xMDI0eDY4Mi5wbmc_p_p100_p_3D.png">
                <img style="DISPLAY: none" src="http://os36ky6gs.bkt.clouddn.com/3.png">
                <img style="DISPLAY: none"  src="http://os36ky6gs.bkt.clouddn.com/3.png">
                <img  style="DISPLAY: none"  src="http://os36ky6gs.bkt.clouddn.com/3.png">
                <img  style="DISPLAY: none" src="http://os36ky6gs.bkt.clouddn.com/3.png">
                <img  style="DISPLAY: none" src="http://os36ky6gs.bkt.clouddn.com/3.png">
            </div>
            <div class="bg"></div>
            <div id=jsNav class=jsNav>
                <a class="trigger imgSelected" >1</a>
                <a class="trigger" >2</a>
                <a class="trigger" >3</a>
                <a class="trigger" >4</a>
                <a class="trigger" >5</a>
                <a class="trigger" >6</a>
            </div>
        </div>
    </div>
    <#--<div class="fn-right" style="width:38%;height:315px;padding-left: 2%">
        <img class="fn-left" style="width: 48%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/16.jpg">
        <img class="fn-right" style="width: 48%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/15.jpg">
        <img class="fn-left" style="width: 48%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/14.jpg">
        <img class="fn-right" style="width: 48%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/13.jpg">
        <img class="fn-left" style="width: 48%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/12.jpg">
        <img class="fn-right" style="width: 48%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/11.jpg">
    </div>-->

</div>
<div class="module" style="width: 100%;height: 200px">
    <div class="module fn-left" style="width: 46%;background-color:rgba(211,187,238,0.16); padding: 10px;margin: 5px">
        <header>
            <h1>资源列表<h1>
        </header>
        <main>
            <#list resources as resource>
                <list style="list-style: inside">
                <li style="margin-bottom:5px ">
                    <label >${resource.resourceName}<label>
                     <i class="fa fa-heart-o fn-right  " style="padding-right: 40px">2</i>
                     <a herf="" class="fn-right" style="margin-bottom: 2px">开始下载</a>
                </li>
                </list>
            </#list>
        </main>
    </div>
    <div class="module fn-right" style="width: 46%;background-color: rgba(211,187,238,0.16);padding: 10px;margin: 5px">
        <header>
            <h1>站点推荐<h1>
        </header>
        <main>
            <list>
                <li style="margin-bottom:5px ">
                    <label style="width: 60px;height: 20px;">极客学院</label>
                        <i class="fa fa-heart-o fn-right ">2</i>
                        <a herf="" class="fn-right">开始下载</a>
                </li>
                <li style="margin-bottom:5px ">
                    <label >慕课学院<label>
                        <i class="fa fa-heart-o fn-right " style="padding-left: 10px">2</i>
                        <a herf="" class="fn-right">开始下载</a>
                </li>
            </list>
        </main>
    </div>
</div>

