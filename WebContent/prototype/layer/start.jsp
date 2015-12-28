<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>layer start</title>
<script type="text/javascript">
	
	// 小小提示层
	function alertMsg() {
		layer.msg( "Hello Layer" ) ;
	}
	
	// 弹出一个页面层
	function alertPage() {
		layer.open( {
			type: 1,
			area: [ "600px", "360px" ],
			shadeClose: true, 	// 点击遮罩关闭
			content: '<div style="padding: 20px;">自定义内容</div>'
		} ) ;
	}
	
	// 弹出一个iframe层
	function alertIframe() {
		top.layer.open( {
			type: 2,
			title: "iframe父子操作",
			maxmin: true,
			shadeClose: false,
			area: [ "800px", "520px" ],
			content: "prototype/bootstrap_table/user_list.jsp"
		} ) ;
	}
	
	// 弹出一个loading层
	function alertLoading() {
		var li = layer.load() ;
		// 此处使用setTimeout演示ajax回调
		setTimeout( function() {
			layer.close( li ) ;
		}, 1000 ) ;
	}
	
	// 弹出一个tips层
	function alertTips() {
		layer.tips( "hello tips!", "#test5" ) ;
	}

</script>
</head>
<body>
	<button class="btn btn-primary" type="button" onclick="alertMsg() ;">小小提示层</button>
	<button class="btn btn-primary" type="button" onclick="alertPage() ;">弹出一个页面层</button>
	<button class="btn btn-primary" type="button" onclick="alertIframe() ;">弹出一个iframe层</button>
	<button class="btn btn-primary" type="button" onclick="alertLoading() ;">弹出一个loading层</button>
	<button class="btn btn-primary" id="test5" type="button" onclick="alertTips() ;">弹出一个tips层</button>
</body>
</html>