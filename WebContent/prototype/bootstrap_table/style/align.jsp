<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Align</title>
</head>
<body>
	<!-- 
		data-halign: 调整表头的对齐方式
		data-align: 调整内容的对齐方式
		data-valign: 应该是调整垂直方向的对齐方式，没有尝试成功
	 -->
	<table data-toggle="table" 
       	data-url="user/queryAllResultJson.action" >
	    <thead>
		    <tr>
		        <th data-field="id" data-halign="right" data-align="center">ID</th>
		        <th data-field="name" data-halign="center" data-align="left">Name</th>
		        <th data-field="password" data-halign="left" data-align="right">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>