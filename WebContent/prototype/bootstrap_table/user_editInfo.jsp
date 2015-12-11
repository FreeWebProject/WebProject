<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>查看页面</title>
<script type="text/javascript">
		$(function (){
			$("#upload1").uploadify({
				'uploader' : "/WebProject/uploadify/uploadify.action", 
				'folder' : "upload",
				'auto' : false,
				'buttonText' : "选择文件",
				'buttonCursor' : "hand",
		 		'fileSizeLimit' : "100M",
				'fileTypeExts' : "*.txt; *.png; *.jpg; ", 
				'fileObjName' : "uploadify",
				'method' : "get",
				'multi' : false,    				//允许多个文件同时上传 
			 	'swf' : "/WebProject/common/uploadify/uploadify.swf",
			 	'onUploadStart' : function( file ){
			 			var data = {
			 					"name" : $("[name='user.file']").val() 
			 			} ;
			 			$("#upload1").uploadify("settings","formData",{ "json" : JSON.stringify( data ) } ) ;
			 	} 
			}) ; 
		}) ;
	/* function save( mark ){
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
	} */
	
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
    			<label class="col-md-2 control-label">生日</label>
    			<div class="input-group col-md-3 date form_date"> 
    				<s:textfield cssClass="validate[required, length[0,32]] form-control" name="user.birthday" />
    				<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
    				<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-xs-2 control-label">兴趣爱好</label>
    			<div class="col-xs-4">
    				<s:checkboxlist list="#{'0':'游泳','1':'篮球','2':'足球','3':'排球'}" name="user.hobby" />
    			</div>
    			<label class="col-md-2 control-label"><span class="text-danger">*</span>学历</label>
    			<div class="col-md-4">
    				<s:select cssClass="form-control" list="#{'0':'小学','1':'初中','2':'高中','3':'本科','4':'硕士','5':'博士'}" name="user.education"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label"><span class="text-danger">*</span>联系电话</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required, length[0,2]] form-control" name="user.phone"/>
    			</div>
    			<label class="col-md-2 control-label"><span class="text-danger">*</span>邮箱</label>
    			<div class="col-md-4">
    				<s:textfield cssClass="validate[required,custom[email]] form-control" name="user.email"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-sm-2 control-label"><span class="text-danger">*</span>自我介绍</label>
    			<div class="col-sm-10">
    				<s:textarea cssClass="validate[required, length[0,1024]] form-control" name="user.self" cssStyle="height: 100px;"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-sm-2 control-label">上传附件</label>
    			<div class="col-sm-2">
    				<span class="text-danger">请输入文件名</span>
    				<s:textfield name="user.file"/>
					<input type="file" id="upload1" name="uploadify" />
					<a href="javascript: $('#upload1').uploadify('cancel')">去除第一个</a>
					<a href="javascript: $('#upload1').uploadify('destroy')">清空所有</a>
					<a href="javascript: $('#upload1').uploadify('upload','*')">上传</a>
    			</div>
    		</div>
		</div>
		<div class="navbar-fixed-bottom mb10">
  			<div class="container-fluid text-center">
  				<button class="btn btn-primary" type="button" onclick="save( 'save' ) ;">保存</button>
		  	</div>
  		</div>
	</s:form>
</body>
</html>
