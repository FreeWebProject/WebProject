<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Basic Columns</title>
</head>
<body>
	<!-- 
		data-show-columns: 是否列的下拉菜单
		data-switchable: 是否可以隐藏列
		data-visible: 初始状态是否是可见的
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-show-columns="true" >
	    <thead>
		    <tr>
		        <th data-field="id" data-switchable="false">ID</th>
		        <th data-field="name">Name</th>
		        <th data-field="password" data-visible="false">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>