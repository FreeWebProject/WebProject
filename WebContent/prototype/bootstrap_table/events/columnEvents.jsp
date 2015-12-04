<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Column Events</title>
<style type="text/css">
	.ml10 {
	    margin-left: 10px;
	}
</style>
<script type="text/javascript">
	function actionFormatter(value, row, index) {
	    return [
	        '<a class="like" href="javascript:void(0)" title="Like">',
	        '<i class="glyphicon glyphicon-heart"></i>',
	        '</a>',
	        '<a class="edit ml10" href="javascript:void(0)" title="Edit">',
	        '<i class="glyphicon glyphicon-edit"></i>',
	        '</a>',
	        '<a class="remove ml10" href="javascript:void(0)" title="Remove">',
	        '<i class="glyphicon glyphicon-remove"></i>',
	        '</a>'
	    ].join('');
	}
	
	window.actionEvents = {
	    'click .like': function (e, value, row, index) {
	        alert('You click like icon, row: ' + JSON.stringify(row));
	        console.log(value, row, index);
	    },
	    'click .edit': function (e, value, row, index) {
	        alert('You click edit icon, row: ' + JSON.stringify(row));
	        console.log(value, row, index);
	    },
	    'click .remove': function (e, value, row, index) {
	        alert('You click remove icon, row: ' + JSON.stringify(row));
	        console.log(value, row, index);
	    }
	};
</script>
</head>
<body>
	<!-- 
		data-show-header: 是否显示表头
	 -->
	<table data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-search="true" >
	    <thead>
		    <tr>
		        <th data-field="id">ID</th>
		        <th data-field="name">Name</th>
		        <th data-field="password">Password</th>
		        <th data-field="action" data-formatter="actionFormatter" data-events="actionEvents">Action</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>