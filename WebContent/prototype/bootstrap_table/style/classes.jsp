<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Classes</title>
</head>
<body>
	<!-- 
		data-classes:为table加样式
		data-striped:隔行变色
		th中可以用栅格系统调整宽度
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-classes="table table-hover table-condensed"
		data-striped="true" >
	    <thead>
		    <tr>
		        <th class="col-xs-6" data-field="id">ID</th>
		        <th class="col-xs-3" data-field="name">Name</th>
		        <th class="col-xs-3" data-field="password">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>