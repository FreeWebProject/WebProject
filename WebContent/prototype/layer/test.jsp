<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>Insert title here</title>
</head>
<script type="text/javascript">

   function closeIframe() {
	   var index1 = top.layer.getFrameIndex(window.name); //获取窗口索引
	   
	   var v = $('#mark1').val() ;
	   
	   $(window.parent.frames["content"].document).find("#parentIframe").text( v ) ;
	   parent.layer.msg('向父页面传送的值 :' + v ) ;
	   parent.layer.close( index1 ) ;
   }
   
   function second() {
	   var index1 = parent.layer.getFrameIndex(window.name); //获取窗口索引
	   popup.openHtml( 'prototype/layer/test1.jsp', '标题', ['300px','400px'], true, index1 ) ; 
  }
</script>
<body>
		请在关闭该层之前留个标记：<input id="mark1" />
		
         <button id="test"><span style="color:red">我的名字随时会变得</span></button>
         <button onclick="second() ;">点击我打开第二层页面</button>
         <button onclick="closeIframe() ;">关闭窗口</button>
</body>
</html>