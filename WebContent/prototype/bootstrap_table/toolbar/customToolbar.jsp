<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Hide Header</title>
</head>
<body>
	<!-- 
		data-toolbar: 指定一个toolbar的div
	 -->
	<div id="toolbar" class="btn-group">
		<button type="button" class="btn btn-default">
			<i class="glyphicon glyphicon-plus"></i>
		</button>
		<button type="button" class="btn btn-default">
			<i class="glyphicon glyphicon-heart"></i>
		</button>
		<button type="button" class="btn btn-default">
			<i class="glyphicon glyphicon-trash"></i>
		</button>
	</div>
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-search="true"
		data-show-refresh="true"
		data-show-toggle="true"
		data-show-columns="true"
		data-toolbar="#toolbar" >
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