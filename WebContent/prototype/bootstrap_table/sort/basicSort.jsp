<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Basic Sort</title>
</head>
<body>
	<!-- 
		data-sort-name: 默认的排序列
		data-sort-order: 默认的排序方式
		data-sortable: 是否可以排序
		
		后台并没有写sql的排序，可以自动排序。强大
		test
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-sort-name="name"
		data-sort-order="desc" >
	    <thead>
		    <tr>
		        <th data-field="id" data-sortable="true">ID</th>
		        <th data-field="name" data-sortable="true">Name</th>
		        <th data-field="password" data-sortable="true">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>