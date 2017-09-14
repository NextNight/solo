<div class="module">
    <div class="area ">
        <div id=js class="js">
            <div class="box01" style="width:100%">
                <img  src="http://os36ky6gs.bkt.clouddn.com/3.png">
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
</div>
<div class="module" style="width: 100%;height: 150px">
    <div class="module fn-left" style="width: 46%; padding: 10px">
        <header >
            <h2 style="border-bottom: 2px  #3d4450 solid;color:#3d4450 ">资源列表</h2>
        </header>
        <marquee direction="up" loop=-1 truespeed="truespeed" height="50px"  behavior="scroll" scrolldelay="100" scrollamount="1" >
        <main>
            <#list resources as resource>
                <list style="list-style: inside">
                <li style="margin-bottom:5px ">
                    <label >${resource.resourceName}<label>
                     <i class="fa fa-heart-o">2</i>
                     <a herf="" class="fn-right">开始下载</a>&nbsp;
                </li>
                </list>
            </#list>
        </main>
        </marquee>
    </div>
    <div class="module fn-right" style="width: 46%;padding: 10px">
        <header >
            <h2 style="border-bottom: 2px  #3d4450 solid;color:#3d4450">站点推荐</h2>
        </header>
        <main>
            <list>
                <li style="margin-bottom:5px ">

                    <label >极客学院</label>
                        <i class="fa fa-heart-o ">2</i>
                        <a herf="" class="fn-right">开始下载</a>
                </li>
                <li style="margin-bottom:5px ">
                <label >慕课学院<label>
                    <i class="fa fa-heart-o " style="padding-left: 10px">2</i>
                    <a herf="" class="fn-right">开始下载</a>
                </li>
                <li style="margin-bottom:5px ">
                    <label >慕课学院<label>
                        <i class="fa fa-heart-o" style="padding-left: 10px">2</i>
                        <a herf="" class="fn-right">开始下载</a>
                </li>
            </list>
        </main>
    </div>
</div>

