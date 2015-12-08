<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<script type="text/javascript" src="common/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="common/ueditor/ueditor.all.js"></script>
<script type="text/javascript" src="common/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
	$( function() {
		var editor = new baidu.editor.ui.Editor() ;
		editor.render( "editor" ) ;
	} ) ;
</script>
<title>ueditor demo</title> 
</head>
<body>
	<textarea id="editor"></textarea>
</body>
</html>