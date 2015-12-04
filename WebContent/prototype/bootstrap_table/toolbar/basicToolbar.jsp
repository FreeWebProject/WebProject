<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Hide Header</title>
</head>
<body>
	<!-- 
		data-search: 搜索
		data-show-refresh: 刷新
		data-show-toggle: 卡片
		data-show-columns: 选择列
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-search="true"
		data-show-refresh="true"
		data-show-toggle="true"
		data-show-columns="true" >
	    <thead>
		    <tr>
		        <th data-field="id">ID</th>
		        <th data-field="name">Name</th>
		        <th data-field="password">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>