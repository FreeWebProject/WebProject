<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>查看页面</title>
<script type="text/javascript">

	$( document ).ready( function() {
		$("form").mouseover(function (){
		 	$("input[type='checkbox']").attr("name","user.hobby") ;
		});
		
	} );
	
	function save( mark ){
		// ajax提交前先进行表单的验证
		$("form").validationEngine({
			success : function() {
				ajax_callJson("user/saveOrUpdateByAjax.action", getJson( "user" ), function(data){
					ad_getParent().bt_refresh( "btTable" ) ;
					if( mark == "saveAndClose"){
						ad_close() ;
					}else{
						ad_alert( SAVE_SUCCESS ) ;
					}
				})
			} ,
			ajax: true
		})
	}
	
</script>
</head>
<body>
	<s:form cssClass="container-fluid mt20" action="view" namespace="/user" method="POST">
		<s:hidden name="user.id" />
  		<div class="form-horizontal">
    		<div class="form-group">
    			<label class="col-md-2 control-label"><span class="text-danger">*</span>用户名</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required, length[6,11]] form-control" name="user.name"/>
    			</div>
    			<label class="col-md-2 control-label"><span class="text-danger">*</span>密码</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required, length[6,11] form-control" name="user.password"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-xs-2 control-label"><span class="text-danger">*</span>性别</label>
    			<div class="col-xs-4">
    				<s:radio list="#{'0':'男','1':'女' }" name="user.sex"/>
    			</div>
    			<label class="col-xs-2 control-label">生日</label>
    			<div class="pl15 pr15 input-group col-xs-4 date form_date"> 
    				<s:textfield cssClass="validate[required, length[0,32]] form-control" name="user.dateType" />
    				<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
    				<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-xs-2 control-label">兴趣爱好</label>
    			<div class="col-xs-4">
    				<s:checkboxlist list="#{'0':'游泳','1':'篮球','2':'足球','3':'排球'}" name="hobby" />
    			</div>
    			<label class="col-md-2 control-label"><span class="text-danger">*</span>学历</label>
    			<div class="col-md-4">
    				<s:select cssClass="form-control" list="#{'0':'小学','1':'初中','2':'高中','3':'本科','4':'硕士','5':'博士'}" name="user.education"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label"><span class="text-danger">*</span>联系电话</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required] form-control" name="user.phone"/>
    			</div>
    			<label class="col-md-2 control-label"><span class="text-danger">*</span>邮箱</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required] form-control" name="user.email"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-sm-2 control-label"><span class="text-danger">*</span>自我介绍</label>
    			<div class="col-sm-10">
    				<s:textarea cssClass="validate[required, length[0,1024]] form-control" name="user.self" cssStyle="height: 100px;"/>
    			</div>
    		</div>
		</div>
		<div class="navbar-fixed-bottom mb10">
  			<div class="container-fluid text-center">
  				<button class="btn btn-primary" type="button" onclick="save( 'save' ) ;">保存</button>
  				<button class="btn btn-primary" type="button" onclick="save( 'saveAndClose' ) ;">保存并关闭</button>
  				<button class="btn btn-default" type="button" onclick="ad_close() ;">关闭</button>
		  	</div>
  		</div>
	</s:form>
</body>
</html>
