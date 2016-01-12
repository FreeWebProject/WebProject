<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"%>
<title>JS Bin</title>


<link rel="stylesheet" type="text/css" href="prototype/tab/easyui.css">
<script type="text/javascript" src="prototype/tab/jquery.easyui.min.js"></script>
<style>
  article, aside, figure, footer, header, hgroup, 
  menu, nav, section { display: block; }
  .west{
    width:200px;
    padding:10px;
  }
  .north{
    height:100px;
  }
</style>
<script>
$( document ).ready( function() {
	
    //动态菜单数据
    var treeData = [{
            text : "菜单",
            children : [{
                    text : "一级菜单1",
                    attributes : {
                        url : ""
                    }
                }, {
                    text : "一级菜单2",
                    attributes : {
                        url : ""
                    }
                }, {
                    text : "一级菜单3",
                    state : "closed",
                    children : [{
                            text : "二级菜单1",
                            attributes : {
                                url : ""
                            }
                        }, {
                            text : "二级菜单2",
                            attributes : {
                                url : ""
                            }
                        }, {
                            text : "二级菜单3",
                            attributes : {
                                url : ""
                            }
                        }
                    ]
                }
            ]
        }
    ];
    
    //实例化树形菜单
    $("#tree").tree({
        data : treeData,
        lines : true,
        onClick : function (node) {
            if (node.attributes) {
                Open(node.text, node.attributes.url);
            }
        }
    });
    //在右边center区域打开菜单，新增tab
    function Open(text, url) {
        if ($("#tabs").tabs('exists', text)) {
            $('#tabs').tabs('select', text);
        } else {
            $('#tabs').tabs('add', {
                title : text,
                closable : true,
                content : text
            });
        }
    }
    
    //绑定tabs的右键菜单
    $("#tabs").tabs({
        onContextMenu : function (e, title) {
            e.preventDefault();
            $('#tabsMenu').menu('show', {
                left : e.pageX,
                top : e.pageY
            }).data("tabTitle", title);
        }
    });
    
    //实例化menu的onClick事件
    $("#tabsMenu").menu({
        onClick : function (item) {
            CloseTab(this, item.name);
        }
    });
    
    //几个关闭事件的实现
    function CloseTab(menu, type) {
        var curTabTitle = $(menu).data("tabTitle");
        var tabs = $("#tabs");
        
        if (type === "close") {
            tabs.tabs("close", curTabTitle);
            return;
        }
        
        var allTabs = tabs.tabs("tabs");
        var closeTabsTitle = [];
        
        $.each(allTabs, function () {
            var opt = $(this).panel("options");
            if (opt.closable && opt.title != curTabTitle && type === "Other") {
                closeTabsTitle.push(opt.title);
            } else if (opt.closable && type === "All") {
                closeTabsTitle.push(opt.title);
            }
        });
        
        for (var i = 0; i < closeTabsTitle.length; i++) {
            tabs.tabs("close", closeTabsTitle[i]);
        }
    }
});
</script>
</head>


<body class="easyui-layout">
  <div region="north" class="north" title="test">
    <h1>最简单的左右结构实现，及tab的右键菜单实现，右键查看源码</h1>
  </div>
  <div region="center" title="center">
    <div class="easyui-tabs" fit="true" border="false" id="tabs">
      <div title="首页"></div>
    </div>
  </div>
  <div region="west" class="west" title="menu">
    <ul id="tree"></ul>
  </div>
  
  <div id="tabsMenu" class="easyui-menu" style="width:120px;">  
    <div name="close">关闭</div>  
    <div name="Other">关闭其他</div>  
    <div name="All">关闭所有</div>
  </div>  
  
</body>
</html>