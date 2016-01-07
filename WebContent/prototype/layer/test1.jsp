<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>Insert title here</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		<%  
	   		String index1 = (String)request.getParameter("temp");  
		%>  
	}) ;
	
   function closeIframe1() {
	   var index2 = parent.layer.getFrameIndex(window.name); //获取窗 口索引
	   var v = $('#mark2').val() ;
 	   $(window.parent.frames["layui-layer-iframe" + <%=index1%>].document).find("#test").text( v ) ;   
	   parent.layer.msg('向父页面传送的值 :' + v ) ; 
	   parent.layer.close( index2 ) ;
   }
</script>
<body>
		这是二层页面
		请在关闭该层之前留个标记：<input id="mark2" />
        <button onclick="closeIframe1() ;">关闭窗口</button>
</body>
</html>