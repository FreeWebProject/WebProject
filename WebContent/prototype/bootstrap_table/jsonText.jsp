<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>通过data属性的方式</title>
</head>
<body>
	<table data-toggle="table" data-url="bootstrapTable/jsonText.action">
		<thead>
			<tr>
				<th data-field="id">Item ID</th>
				<th data-field="name">Item Name</th>
				<th data-field="password">Item Password</th>
			</tr>
		</thead>
	</table>
</body>
</html>