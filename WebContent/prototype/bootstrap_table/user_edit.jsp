<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>查看页面</title>
<script type="text/javascript">
	function save( mark ){
		ajax_callJson("user/saveOrUpdateByAjax.action", getJson( "user" ), function(data){
			ad_getParent().bt_refresh( "btTable" ) ;
			if( mark == "saveAndClose"){
				ad_close() ;
			}else{
				ad_alert( SAVE_SUCCESS ) ;
			}
		}) ;
	}
</script>
</head>
<body>
	<s:form cssClass="container-fluid mt40" action="view" namespace="/user" method="POST" style="margin-top:30px">
		<s:hidden name="user.id" />
  		<div class="form-horizontal">
    		<div class="form-group">
    			<label class="col-md-2 control-label">用户名</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.name"/>
    			</div>
    			<label class="col-md-2 control-label">密码</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.password"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label">性别</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.sex"/>
    			</div>
    			<label class="col-md-2 control-label">年龄</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.age"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label">生日</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.birthday"/>
    			</div>
    			<label class="col-md-2 control-label">兴趣爱好</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.hobby"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label">学历</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.education"/>
    			</div>
    			<label class="col-md-2 control-label">联系电话</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.phone"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label">邮箱</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.email"/>
    			</div>
    			<label class="col-md-2 control-label">自我介绍</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.self"/>
    			</div>
    		</div>
		</div>
		<div class="navbar-fixed-bottom" style="margin-bottom:10px">
  			<div class="container-fluid text-center">
  				<button class="btn btn-primary" type="button" onclick="save( 'save' ) ;">保存</button>
  				<button class="btn btn-primary" type="button" onclick="save( 'saveAndClose' ) ;">保存并关闭</button>
  				<button class="btn btn-default" type="button" onclick="ad_close() ;">关闭</button>
		  	</div>
  		</div>
	</s:form>
</body>
</html>