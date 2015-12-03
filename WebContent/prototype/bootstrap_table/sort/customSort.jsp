<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Custom Sort</title>
<script type="text/javascript">
	function nameSorter(a, b) {
	    if (a < b) return 1;
	    if (a > b) return -1;
	    return 0;
	}
</script>
</head>
<body>
	<!-- 
		data-sorter:为单独列指定排序方法，值为js方法名
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-sort-name="name"
		data-sort-order="desc" >
	    <thead>
		    <tr>
		        <th data-field="id" data-sortable="true">ID</th>
		        <th data-field="name" data-sortable="true" data-sorter="nameSorter">Name</th>
		        <th data-field="password" data-sortable="true">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>