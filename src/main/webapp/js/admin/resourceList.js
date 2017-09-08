/**
 * Created by rzx on 2017/9/7.
 */
/* resource-list 相关操作 */
/*
 * Copyright (c) 2010-2017, b3log.org & hacpai.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
/**
 * resources list for admin
 *
 * @author <a href="http://vanessa.b3log.org">Liyuan Li</a>
 * @author <a href="http://88250.b3log.org">Liang Ding</a>
 * @version 1.1.1.7, Oct 17, 2015
 */

/* resources-list 相关操作 */
admin.resourceList = {
    tablePagination: new TablePaginate("resource"),
    pageInfo: {
        currentCount: 1,
        pageCount: 1,
        currentPage: 1
    },
    resourcesInfo: {
        'oId': ""
    },
    /*
     * 初始化 table, pagination
     */
    init: function(page) {
        this.tablePagination.buildTable([{
            style: "padding-left: 12px;",
            text: "资源名称",
            index: "resourceName",
            width: 230
        }, {
            style: "padding-left: 12px;",
            text: "资源地址",
            index: "resourceUrl",
            minWidth: 180
        },{
            style: "padding-left: 12px;",
            text: "资源下载量",
            index: "resourceDlCount",
            minWidth: 180
        },{
            style: "padding-left: 12px;",
            text: "喜欢人数",
            index: "resourceLikeCount",
            minWidth: 180
        }]);

        this.tablePagination.initPagination();
        this.getList(page);

        $("#resourceUpdate").dialog({
            width: 700,
            height: 300,
            "modal": true,
            "hideFooter": true
        });
    },
    /*
     * 根据当前页码获取列表
     * @pagNum 当前页码
     */
    getList: function(pageNum) {
        $("#loadMsg").text(Label.loadingLabel);
        $("#tipMsg").text("");
        this.pageInfo.currentPage = pageNum;
        var that = this;

        $.ajax({
            url: latkeConfig.servePath + "/console/resources/" + pageNum + "/" + Label.PAGE_SIZE + "/" + Label.WINDOW_SIZE,
            type: "GET",
            cache: false,
            success: function(result, textStatus) {
                $("#tipMsg").text(result.msg);
                if (!result.sc) {
                    $("#loadMsg").text("");
                    return;
                }

                var resources = result.resources;
                var resourceData = [];
                admin.resourceList.pageInfo.currentCount = resources.length;
                admin.resourceList.pageInfo.pageCount = result.pagination.paginationPageCount;
                if (resources.length < 1) {
                    $("#tipMsg").text("No resource  " + Label.reportIssueLabel);
                    $("#loadMsg").text("");
                    return;
                }

                for (var i = 0; i < resources.length; i++) {
                    resourceData[i] = {};
                    resourceData[i].resourceName = resources[i].resourceName;
                    resourceData[i].resourceUrl = resources[i].resourceUrl;
                    resourceData[i].resourceDlCount = resources[i].resourceDlCount;
                    resourceData[i].resourceLikeCount = resources[i].resourceLikeCount;
                    that.tablePagination.updateTablePagination(resourceData, pageNum, result.pagination);

                    $("#loadMsg").text("");
                }
            }
        });
    },
    /*
     * 添加资源
     */
    add: function() {
        /*if (this.validate()) {暂时忽略校验*/
            $("#loadMsg").text(Label.loadingLabel);
            $("#tipMsg").text("");

            var requestJSONObject = {
                "resourceName": $("#resourceName").val(),
                "resourceUrl": $("#resourceUrl").val(),
                "resourceInstruction": $("#resourceInstruction").val()
            };

            $.ajax({
                url: latkeConfig.servePath + "/console/resource/",
                type: "POST",
                cache: false,
                data: JSON.stringify(requestJSONObject),
                success: function(result, textStatus) {
                    $("#tipMsg").text(result.msg);
                    if (!result.sc) {
                        $("#loadMsg").text("");
                        return;
                    }

                    $("#resourceName").val("");
                    $("#resourceUrl").val("");
                    $("#resourceInstruction").val("");

                    if (admin.resourceList.pageInfo.currentCount === Label.PAGE_SIZE &&
                        admin.resourceList.pageInfo.currentPage === admin.resourceList.pageInfo.pageCount) {
                        admin.resourceList.pageInfo.pageCount++;
                    }
                    var hashList = window.location.hash.split("/");
                    if (admin.resourceList.pageInfo.pageCount !== parseInt(hashList[hashList.length - 1])) {
                        admin.setHashByPage(admin.resourceList.pageInfo.pageCount);
                    }

                    admin.resourceList.getList(admin.resourceList.pageInfo.pageCount);

                    $("#loadMsg").text("");
                }
            });
       /* }*/
    }
};

/*
 * 注册到 admin 进行管理
 */
admin.register["resource-list"] =  {
    "obj": admin.resourceList,
    "init": admin.resourceList.init,
    "refresh": admin.resourceList.getList
}