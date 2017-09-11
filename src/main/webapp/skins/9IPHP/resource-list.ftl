<div class="module" style="width:100%;height:427px ">
    <div class="fn-left" style="width:60%;height: 426px">
        <img style="height: 423px" src="http://os36ky6gs.bkt.clouddn.com/16.jpg">
    </div>
    <div class="fn-right" style="width:40%">

        <img style="width: 45%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/16.jpg">
        <img style="width: 45%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/16.jpg">
        <img style="width: 45%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/16.jpg">
        <img style="width: 45%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/16.jpg">
        <img style="width: 45%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/16.jpg">
        <img style="width: 45%;padding-bottom: 5px" src="http://os36ky6gs.bkt.clouddn.com/16.jpg">
    </div>

</div>
<div style="width: 100%;height: 200px">
    <div class="module fn-left" style="width: 48%;background-color: rgba(7,222,250,0.16)">
        <header>
            <h1>资源列表<h1>
        </header>
        <main>
            <#list resources as resource>
                <list>
                <li style="margin-bottom:5px ">
                    <label >${resource.resourceName}<label>
                     <i class="fa fa-heart-o fn-right  " style="color: red;padding-right: 40px">2</i>
                     <a herf="" class="fn-right" style="background-color: #00b0e8;color: white;margin-bottom: 2px">开始下载</a>
                </li>
                </list>
            </#list>
        </main>
    </div>
    <div class="module fn-right" style="width: 48%;background-color: rgba(7,222,250,0.16)">
        <header>
            <h1>站点推荐<h1>
        </header>
        <main>
            <list>
                <li style="margin-bottom:5px ">
                    <label style="width: 60px;height: 20px;background-color: #00b0e8"><img style="width: 20px;height: 15px" src="http://os36ky6gs.bkt.clouddn.com/16.jpg"/>极客学院</label>
                        <i class="fa fa-heart-o fn-right " style="color: red;padding-left: 10px">2</i>
                        <a herf="" class="fn-right" style="background-color: #00b0e8;color: white;padding: 2px;margin-bottom: 2px">开始下载</a>
                </li>
                <li style="margin-bottom:5px ">
                    <label >慕课学院<label>
                        <i class="fa fa-heart-o fn-right " style="color: red;padding-left: 10px">2</i>
                        <a herf="" class="fn-right" style="background-color: #00b0e8;color: white;padding: 2px;margin-bottom: 2px">开始下载</a>
                </li>
            </list>
        </main>
    </div>
</div>