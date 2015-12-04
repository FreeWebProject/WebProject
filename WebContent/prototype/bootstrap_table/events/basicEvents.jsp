<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Basic Events</title>
<script type="text/javascript">
	$(function () {
	    var $result = $('#eventsResult');
	
	    $('#eventsTable').on('all.bs.table', function (e, name, args) {
	        console.log('Event:', name, ', data:', args);
	    })
	    .on('click-row.bs.table', function (e, row, $element) {
	        $result.text('Event: click-row.bs.table');
	    })
	    .on('dbl-click-row.bs.table', function (e, row, $element) {
	        $result.text('Event: dbl-click-row.bs.table');
	    })
	    .on('sort.bs.table', function (e, name, order) {
	        $result.text('Event: sort.bs.table');
	    })
	    .on('check.bs.table', function (e, row) {
	        $result.text('Event: check.bs.table');
	    })
	    .on('uncheck.bs.table', function (e, row) {
	        $result.text('Event: uncheck.bs.table');
	    })
	    .on('check-all.bs.table', function (e) {
	        $result.text('Event: check-all.bs.table');
	    })
	    .on('uncheck-all.bs.table', function (e) {
	        $result.text('Event: uncheck-all.bs.table');
	    })
	    .on('load-success.bs.table', function (e, data) {
	        $result.text('Event: load-success.bs.table');
	    })
	    .on('load-error.bs.table', function (e, status) {
	        $result.text('Event: load-error.bs.table');
	    })
	    .on('column-switch.bs.table', function (e, field, checked) {
	        $result.text('Event: column-switch.bs.table');
	    })
	    .on('page-change.bs.table', function (e, number, size) {
	        $result.text('Event: page-change.bs.table');
	    })
	    .on('search.bs.table', function (e, text) {
	        $result.text('Event: search.bs.table');
	    });
	});
</script>
</head>
<body>
	<!-- 
		data-show-header: 是否显示表头
	 -->
	 <div class="alert alert-success" id="eventsResult">
	    Here is the result of event.
	</div>
	<table id="eventsTable" 
		data-toggle="table" 
		data-url="user/queryAllResultJson.action"
		data-pagination="true"
		data-search="true"
		data-show-refresh="true"
		data-show-toggle="true"
		data-show-columns="true"
		data-toolbar="#toolbar" >
	    <thead>
		    <tr>
		    	<th data-field="state" data-checkbox="true"></th>
		        <th data-field="id">ID</th>
		        <th data-field="name">Name</th>
		        <th data-field="password">Password</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>