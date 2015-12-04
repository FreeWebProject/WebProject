<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Radio Select</title>
</head>
<body>
	<!-- 
		data-click-to-select: 是否显示选择列
		data-field: 咱不理解
		data-checkbox: 显示为checkbox
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-click-to-select="true" >
	    <thead>
		    <tr>
		    	<th data-field="state" data-checkbox="true"></th>
		        <th data-field="id">ID</th>
		        <th data-field="name">Name</th>
		        <th data-field="password">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>