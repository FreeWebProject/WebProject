<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>通过data属性的方式</title>
</head>
<body>
	<table data-toggle="table">
		<thead>
			<tr>
				<th>Item ID</th>
				<th>Item Name</th>
				<th>Item Price</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Item 1</td>
				<td>$1</td>
			</tr>
			<tr>
				<td>2</td>
				<td>Item 2</td>
				<td>$2</td>
			</tr>
		</tbody>
	</table>
	
	<div class="page-header">
		<h3>data-url</h3>
	</div>
	
	<table data-toggle="table" data-url="prototype/bootstrap_table/json/data1.json">
		<thead>
			<tr>
				<th data-field="id">Item ID</th>
				<th data-field="name">Item Name</th>
				<th data-field="price">Item Price</th>
			</tr>
		</thead>
	</table>
</body>
</html>