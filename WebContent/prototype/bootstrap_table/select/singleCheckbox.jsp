<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Single Checkbox</title>
</head>
<body>
	<!-- 
		data-single-select: 是否只能单选
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-click-to-select="true"
		data-single-select="true" >
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