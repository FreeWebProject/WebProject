<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="/common/common.jsp" %>

<title>用户列表（by bt）</title>
<script type="text/javascript">
	function actionFormatter(value, row, index) {
	    return [
	        '<a class="view" href="javascript:void(0)" title="查看">',
	        '<i class="glyphicon glyphicon-eye-open"></i>',
	        '</a>',
	        '<a class="edit ml10" href="javascript:void(0)" title="编辑">',
	        '<i class="glyphicon glyphicon-edit"></i>',
	        '</a>',
	        '<a class="remove ml10" href="javascript:void(0)" title="删除">',
	        '<i class="glyphicon glyphicon-remove"></i>',
	        '</a>'
	    ].join('');
	}
	
	window.actionEvents = {
	    'click .view': function (e, value, row, index) {
	    	ad_open( "user/view.action?user.id=" + value, "查看用户信息" ,"1000", "400" ) ;
	    },
	    'click .edit': function (e, value, row, index) {
	    	ad_open( "user/edit.action?user.id=" + value, "编辑用户信息" ,"1000", "400" ) ;
	    },
	    'click .remove': function (e, value, row, index) {
	    	ad_confirmDelete( function() {
		        ajax_callText( "user/delete.action", value, function() {
		        	bt_removeOneRow( "btTable", "id", value ) ;
		        	ad_alert( DELETE_SUCCESS ) ;
		        } ) ;
    		} ) ;
	    }
	};
	
	// 新建
	function user_add() {
		ad_open( "prototype/bootstrap_table/user_add.jsp", "新建用户", "770", "250" ) ;
	}
	
	// 删除选定的
	function user_delete() {
		var idArray = $.map( bt_getSelections( "btTable" ), function( row ) {
			return row.id ;
		} )
		
		ajax_callText( "user/deleteMore.action", idArray.toString(), function( data ) {
			bt_removeRow( "btTable", "id", idArray ) ;
			ad_alert( "成功删除" + data + "条数据。" ) ;
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
	<div class="container-fluid">
		<div id="toolbar" class="btn-group">
			<button type="button" class="btn btn-default" title="新建" onclick="user_add() ;">
				<i class="glyphicon glyphicon-plus"></i>
			</button>
			<button id="delete" type="button" class="btn btn-danger" title="删除" disabled onclick="user_delete() ;">
				<i class="glyphicon glyphicon-trash"></i>
			</button> 
		</div>
		<table id="btTable" data-toggle="table" data-url="user/queryAllResultJson.action" data-sort-name="name" data-sort-order="asc" data-toolbar="#toolbar" >
			<thead>
				<tr>
					<th data-checkbox="true"></th>
					<th data-formatter="bt_order">#</th>
					<th data-field="name" data-sortable="true">用户名</th>
					<th data-field="password" data-sortable="true">密码</th>
					<th data-field="id" data-formatter="actionFormatter" data-events="actionEvents">操作</th>
				</tr>
			</thead>
		</table>
	</div>
</body>
</html>
