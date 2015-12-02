<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>通过javascrip的方式</title>
<script type="text/javascript">
	$( document ).ready( function() {
		$( "#table" ).bootstrapTable( {
			columns: [ {
				field: "id",
				title: "Item ID"
			}, {
				field: "name",
				title: "Item Name"
			}, {
				field: "price",
				title: "Item Price"
			} ],
			data: [ {
				id: 1,
				name: "Item 1",
				price: "$1"
			}, {
				id: 2,
				name: "Item 2",
				price: "$2"
			} ]
		} ) ;
	} ) ;
</script>
</head>
<body>
	<table id="table"></table>
</body>
</html>