<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="/common/common.jsp" %>

<title>用户列表（by bt）</title>
<script type="text/javascript">
	
	function manage(){
		
		var json = JSON.stringify( bt_getSelections( "btTable" ) ) ;
		ajax_callText( "userManager/addUser.action", json, function( data ) {
			ad_getParent().bt_refresh( "btTable" ) ;
			ad_close() ;
		} ) ;
	}
	$( function() {
		
		$( "#btTable" ).on('check.bs.table uncheck.bs.table check-all.bs.table uncheck-all.bs.table', function () {
	        $( "#delete" ).prop('disabled', !$( "#btTable" ).bootstrapTable('getSelections').length);
	    });
		
	} ) ;
	
</script>
</head>
<body>
	<s:form cssClass="container-fluid" action="jumpToUserList" namespace="/userManager" method="post">
		<div id="toolbar" class="btn-group">
			<button type="button" class="btn btn-default" title="新建" onclick="manage() ;">
				<i class="glyphicon glyphicon-plus"></i>
			</button>
		</div>
		<table id="btTable" data-toggle="table" data-url="userManager/manageUser.action" data-sort-name="name" data-sort-order="asc" data-toolbar="#toolbar" >
			<thead>
				<tr>
					<th data-checkbox="true"></th>
					<th data-field="id" data-sortable="true">用户ID</th>
					<th data-field="name" data-sortable="true">用户名</th>
				</tr>
			</thead>
		</table>
	</s:form>
</body>
</html>
