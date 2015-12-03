<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Format</title>
<script type="text/javascript">
	function nameFormatter(value) {
	    return '<a href="https://github.com/wenzhixin/' + value + '">' + value + '</a>';
	}
	
	function starsFormatter(value) {
	    return '<i class="glyphicon glyphicon-star"></i> ' + value;
	}
	
	function forksFormatter(value) {
	    return '<i class="glyphicon glyphicon-cutlery"></i> ' + value;
	}
</script>
</head>
<body>
	<!-- 
		data-formatter:指定一个js方法，用于指定显示样式，js方法有一个参数为该列内容
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action" >
	    <thead>
		    <tr>
		        <th data-field="id" data-formatter="nameFormatter">ID</th>
		        <th data-field="name" data-formatter="starsFormatter">Name</th>
		        <th data-field="password" data-formatter="forksFormatter">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>