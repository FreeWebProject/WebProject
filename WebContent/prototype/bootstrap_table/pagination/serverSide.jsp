<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Client Side</title>
<script type="text/javascript">
	function queryParams() {
	    return {
	        type: 'owner',
	        sort: 'updated',
	        direction: 'desc',
	        per_page: 100,
	        page: 1
	    };
	}
</script>
</head>
<body>
	<!-- 
		data-show-header: 是否显示表头
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-pagination="true"
		data-side-pagination="server"
		data-page-list="[5, 10, 20, 50, 100, 200]"
		data-search="true"
		data-height="300" >
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