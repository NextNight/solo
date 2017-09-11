<div style="width: 100%;height: 200px;margin-bottom: 20px">
<div class="module fn-left" style="width: 48%">
    <header>
        <h1>资源列表<h1>
    </header>
    <main>
        <#list resources as resource>
            <list>
            <li style="margin-bottom:5px ">
                <label >${resource.resourceName}<label>
                 <i class="fa fa-heart-o " style="color: red;padding-left: 10px">2</i>
                <a herf=""  style="background-color: #00b0e8;color: white;padding: 2px;margin-bottom: 2px">开始下载</a>
            </li>
            </list>
        </#list>
    </main>
</div>
<div class="module fn-right" style="width: 48%">
    <header>
        <h1>站点推荐<h1>
    </header>
    <main>
        <list>
            <li style="margin-bottom:5px ">
                <label ><img src="https://www.jikexueyuan.com/images/logo.png?t=1503566812000"/>极客学院<label>
                    <i class="fa fa-heart-o " style="color: red;padding-left: 10px">2</i>
                    <a herf=""  style="background-color: #00b0e8;color: white;padding: 2px;margin-bottom: 2px">开始下载</a>
            </li>
            <li style="margin-bottom:5px ">
                <label >慕课学院<label>
                    <i class="fa fa-heart-o " style="color: red;padding-left: 10px">2</i>
                    <a herf=""  style="background-color: #00b0e8;color: white;padding: 2px;margin-bottom: 2px">开始下载</a>
            </li>
        </list>
    </main>
</div>
</div>