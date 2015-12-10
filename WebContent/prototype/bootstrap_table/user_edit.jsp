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
    			<label class="col-md-2 control-label"><span class="text-danger">*</span>用户名</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required,custom[noSpecialCaracters],length[6,11]] form-control" name="user.name"/>
    			</div>
    			<label class="col-md-2 control-label"><span style="color:red">*</span>密码</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required, length[6,11] form-control" name="user.password"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-xs-2 control-label"><span style="color:red">*</span>性别</label>
    			<div class="col-xs-4">
    				<s:radio list="#{'0':'男','1':'女' }" name="user.sex" />
    			</div>
    			<label class="col-md-2 control-label">生日</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="form-control" name="user.birthday" placeholder="xxxx-xx-xx"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-xs-2 control-label">兴趣爱好</label>
    			<div class="col-xs-4">
    				<s:checkboxlist id="checkbox" list="#{'0':'游泳','1':'篮球','2':'足球','3':'排球'}" name="user.hobby"/>
    			</div>
    			<label class="col-md-2 control-label"><span style="color:red">*</span>学历</label>
    			<div class="col-md-4">
    				<s:select cssClass="form-control" list="#{'0':'小学','1':'初中','2':'高中','3':'本科','4':'硕士','5':'博士'}" name="user.education"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label"><span style="color:red">*</span>联系电话</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required] form-control" name="user.phone"/>
    			</div>
    			<label class="col-md-2 control-label"><span style="color:red">*</span>邮箱</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required,custom[email]] form-control" name="user.email"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-sm-2 control-label"><span style="color:red">*</span>自我介绍</label>
    			<div class="col-sm-10">
    				<s:textarea cssClass="validate[required, length[0,1024]] form-control" name="user.self" cssStyle="height: 100px;"/>
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