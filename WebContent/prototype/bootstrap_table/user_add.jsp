<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>新增用户</title>
<script type="text/javascript">
	
	// 保存
	function save() {
		$.ajax( {
			"url": "user/saveOrUpdateByAjax.action",
			"type": "post",
			"data": { jsonData: getJson( "user" ) },
			"dataType": "json",
			"success": function( data ) {
				setParameter( "user.id", data.id ) ;
				ad_alert( SAVE_SUCCESS ) ;
			},
			"error": function() {
				alert( "error" ) ;
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
				<s:textfield cssClass="form-control" name="user.name" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">密码</label>
			<div class="col-sm-9">
				<s:textfield cssClass="form-control" name="user.password" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">确认密码</label>
			<div class="col-sm-9">
				<s:textfield cssClass="form-control" name="user.confirmPassword" />
			</div>
		</div>
		
		<div class="navbar-fixed-bottom">
  			<div class="container-fluid text-center">
  				<button class="btn btn-primary" type="button" onclick="save() ;">保存</button>
  				<button class="btn btn-default" onclick="ad_close() ;">返回</button>
		  	</div>
  		</div>
		
	</s:form>
</body>
</html>