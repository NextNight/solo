<div>
    <div id="userTable"></div>
    <div id="userPagination" class="margin12 right"></div>
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
<div id="userUpdate" class="none">
    <table class="form" width="100%" cellpadding="0px" cellspacing="9px">
        <thead>
        <tr>
            <th style="text-align: left" colspan="2">
            ${updateUserLabel}
            </th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th width="48px">
                <label for="userNameUpdate">${commentName1Label}</label>
            </th>
            <td>
                <input id="userNameUpdate" type="text"/>
            </td>
        </tr>
        <tr>
            <th>
                <label for="userEmailUpdate">${commentEmail1Label}</label>
            </th>
            <td>
                <input id="userEmailUpdate" type="text"/>
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
