<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<script type="text/javascript" src="common/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="common/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" src="common/ueditor/lang/zh-cn/zh-cn.js"></script>
<title>ueditor</title>
<script type="text/javascript">
	var ue = UE.getEditor('container') ;
</script>
</head>
<body>
	<form action="">
		 <script id="container" name="content" type="text/plain">
       		这是一个ueditor编辑器
  	    </script>
    </form>
</body>
</html>