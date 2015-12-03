<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>CellStyle</title>
<script type="text/javascript">
	function cellStyle(value, row, index) {
	    var classes = ['active', 'success', 'info', 'warning', 'danger'];
	    
	    if (index % 2 === 0 && index / 2 < classes.length) {
	        return {
	            classes: classes[index / 2]
	        };
	    }
	    return {};
	}
</script>
</head>
<body>
	<!-- 
		data-row-style:在table加载前执行指定的js方法
	 -->
	<table data-toggle="table" 
       	data-url="user/queryAllResultJson.action" >
	    <thead>
		    <tr>
		        <th data-field="id" data-cell-style="cellStyle">ID</th>
		        <th data-field="name">Name</th>
		        <th data-field="password">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>