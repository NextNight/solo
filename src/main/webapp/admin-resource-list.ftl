<div>
    <div id="resourceTable"></div>
    <div id="resourcePagination" class="margin12 right"></div>
</div>
<div class="clear"></div>
<table class="form" width="100%" cellpadding="0px" cellspacing="9px">
    <thead>
    <tr>
        <th style="text-align: left" colspan="2">
        添加资源
        </th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th width="48px">
            <label for="resourceName">资源名称</label>
        </th>
        <td>
            <input id="resourceName" type="text"/>
        </td>
    </tr>
    <tr>
        <th>
            <label for="resourceUrl">URL</label>
        </th>
        <td>
            <input id="resourceUrl" type="text"/>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="right">
            <button onclick="admin.resourceList.add();">${saveLabel}</button>
        </td>
    </tr>
    </tbody>
</table>
<div id="resourceUpdate" class="none">
    <table class="form" width="100%" cellpadding="0px" cellspacing="9px">
        <thead>
        <tr>
            <th style="text-align: left" colspan="2">
              更新资源
            </th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th width="48px">
                <label for="resourceNameUpdate">资源名称</label>
            </th>
            <td>
                <input id="resourceNameUpdate" type="text"/>
            </td>
        </tr>
        <tr>
            <th>
                <label for="resourceUrlUpdate">资源地址</label>
            </th>
            <td>
                <input id="resourceUrlUpdate" type="text"/>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="right">
                <button onclick="admin.resourceList.update();">${updateLabel}</button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
${plugins}
