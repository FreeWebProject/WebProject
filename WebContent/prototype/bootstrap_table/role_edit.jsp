<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>新增用户</title>
<script type="text/javascript">
	
	// 保存
	function save( mark ) {
		ajax_callText( "userType/update.action", getJson( "userType" ), function( data ) {
			ad_getParent().bt_refresh( "btTable" ) ;	// 刷新父页面的bootstrap-table
			
			if( mark == "saveAndClose" ) {	// 保存并关闭
				ad_close() ;
			}else {
					ad_alert( MODIFICATION_SUCCESS ) ;
				}
			
		} ) ;
	}
	
</script>
</head>
<body>
	<s:form cssClass="container-fluid form-horizontal mt20">
		<s:hidden name="userType.id" />
		<s:hidden name="userType.typeId" />
		<s:hidden name="userType.state" />
		
		<div class="form-group">
			<label class="col-sm-2 control-label input-lg">角色名称</label>
			<div class="col-sm-9 input-lg">
				<s:textfield cssClass="form-control" name="userType.name" placeholder="请填写角色名称" />
			</div>
		</div>
		
		<div class="navbar-fixed-bottom" style="margin-bottom:10px">
  			<div class="container-fluid text-center">
  				<button class="btn btn-primary" type="button" onclick="save( 'saveAndClose' ) ;">保存并关闭</button>
  				<button class="btn btn-default" type="button" onclick="ad_close() ;">关闭</button>
		  	</div>
  		</div>
		
	</s:form>
</body>
</html>