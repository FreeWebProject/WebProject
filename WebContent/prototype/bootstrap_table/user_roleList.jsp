<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="/common/common.jsp" %>

<title>用户列表（by bt）</title>
<script type="text/javascript">
	function actionFormatter(value, row, index) {
	    return [
	        '<a class="add ml10" href="javascript:void(0)" title="添加">',
	        '<i class="glyphicon glyphicon-plus"></i>',
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
	    'click .add': function (e, value, row, index) {
		   	 setParameter("userAnduserType.typeId",value) ; 
		   	 $("form").submit() ;
	},
		'click .edit': function(e, value, row, index) {
			ad_open("userType/jumpToRoleEdit.action?userType.typeId=" + value,"编辑角色","770","200")
			
		},
		'click .remove': function(e, value, row, index) {
			ad_confirmDelete( function() {
		        ajax_callText( "userType/delete.action", value, function() {
		        	bt_removeOneRow( "btTable", "id", value ) ;
		        	ad_alert( DELETE_SUCCESS ) ;
		        } ) ;
    		} ) ;
		},
	};
	
	// 新建
	function role_add() {
		ad_open( "prototype/bootstrap_table/role_add.jsp", "新建角色", "770", "200" ) ;
	}
	
	// 删除选定的
	function user_delete() {
		var idArray = $.map( bt_getSelections( "btTable" ), function( row ) {
			return row.id ;
		} )
		
		ajax_callText( "userType/deleteMore.action", idArray.toString(), function( data ) {
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
	<s:form cssClass="container-fluid" action="jumpToUserList" namespace="/userManager" method="post">
		<s:hidden name="userAnduserType.typeId"/>
	   <div id="toolbar" class="btn-group">
			<button type="button" class="btn btn-default" title="新建" onclick="role_add() ;">
				<i class="glyphicon glyphicon-plus"></i>
			</button>
			<button id="delete" type="button" class="btn btn-danger" title="删除" disabled onclick="user_delete() ;">
				<i class="glyphicon glyphicon-trash"></i>
			</button> 
		</div> 
		<table id="btTable" data-toggle="table" data-url="userManager/roleList.action" data-sort-name="name" data-sort-order="asc" data-toolbar="#toolbar" >
			<thead>
				<tr>
				    <th data-checkbox="true"></th> 
					<th data-formatter="bt_order">#</th>
					<th data-field="name" data-sortable="true">角色名称</th>
					<th data-field="typeId" data-formatter="actionFormatter" data-events="actionEvents">操作</th>
				</tr>
			</thead>
		</table>
	</s:form>
</body>
</html>
