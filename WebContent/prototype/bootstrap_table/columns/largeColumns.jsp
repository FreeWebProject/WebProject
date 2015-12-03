<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Large Columns</title>
<script type="text/javascript">
	function buildTable($el, cells, rows) {
	    var i, j, row,
	        columns = [],
	        data = [];
	
	    for (i = 0; i < cells; i++) {
	        columns.push({
	            field: 'field' + i,
	            title: 'Cell' + i
	        });
	    }
	    for (i = 0; i < rows; i++) {
	        row = {};
	        for (j = 0; j < cells; j++) {
	            row['field' + j] = 'Row-' + i + '-' + j;
	        }
	        data.push(row);
	    }
	    $el.bootstrapTable('destroy').bootstrapTable({
	        columns: columns,
	        data: data
	    });
	}
	
	$(function () {
	    buildTable($('#table'), 50, 50);
	});
</script>
</head>
<body>
	<table id="table" data-show-columns="true" data-height="500"></table>
</body>
</html>