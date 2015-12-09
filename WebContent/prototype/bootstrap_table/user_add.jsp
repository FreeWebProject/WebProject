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
		ajax_callJson( "user/saveOrUpdateByAjax.action", getJson( "user" ), function( data ) {
			ad_getParent().bt_refresh( "btTable" ) ;	// 刷新父页面的bootstrap-table
			
			if( mark == "saveAndClose" ) {	// 保存并关闭
				ad_close() ;
			} else if( mark == "saveAndClean" ) {
				cleanAllParameter( "user" ) ;
			} else {	// 保存
				if( getParameter( "user.id" ) == "" ) {
					setParameter( "user.id", data.id ) ;
					ad_alert( SAVE_SUCCESS ) ;
				} else {
					ad_alert( MODIFICATION_SUCCESS ) ;
				}
			}
		} ) ;
	}
	
</script>
</head>
<body>
	<s:form cssClass="container-fluid form-horizontal mt20">
		<s:hidden name="user.id" />
	
		<div class="form-group">
			<label class="col-sm-2 control-label">用户名</label>
			<div class="col-sm-9">
				<s:textfield cssClass="form-control" name="user.name" placeholder="请填写用户名" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">密码</label>
			<div class="col-sm-9">
				<s:password cssClass="form-control" name="user.password" placeholder="请填写密码" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">确认密码</label>
			<div class="col-sm-9">
				<s:password cssClass="form-control" name="user.confirmPassword" placeholder="请确认密码" />
			</div>
		</div>
		
		<div class="navbar-fixed-bottom" style="margin-bottom:10px">
  			<div class="container-fluid text-center">
  				<button class="btn btn-primary" type="button" onclick="save( 'save' ) ;">保存</button>
  				<button class="btn btn-primary" type="button" onclick="save( 'saveAndClose' ) ;">保存并关闭</button>
  				<button class="btn btn-primary" type="button" onclick="save( 'saveAndClean' ) ;">保存并清空</button>
  				<button class="btn btn-default" type="button" onclick="ad_close() ;">关闭</button>
		  	</div>
  		</div>
		
	</s:form>
</body>
</html>