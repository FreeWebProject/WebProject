<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Reset View</title>
<script type="text/javascript">
	$(function () {
	    setTimeout(function () {
	        $('.main').width('80%'); // Change table width
	    }, 1000);
	    
	    $('#resetView').click(function () {
	        $('#table').bootstrapTable('resetView');
	    });
	});
</script>
</head>
<body>
	<!-- 
		data-show-header: 是否显示表头
	-->
	<div class="main">
		<button id="resetView" class="btn btn-default">Reset View</button>
	</div>
	<table id="table" 
		data-toggle="table" 
		data-url="user/queryAllResultJson.action" >
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