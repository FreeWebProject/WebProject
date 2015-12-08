<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>regist</title>

<style type="text/css">
.form-group{margin-top: 20px}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#success").hide() ;
	    $("#fail").hide() ;
	}) ;
   function verifyUsername(){
	   $("#success").hide() ;
	   $("#fail").hide() ;
	   var name = $( "[placeholder = 'username']" ).val() ;
	   
	   $.ajax({
		  	"url": "user/verifyUsername",
			"type": "post",
			"dataType": "text",
			"data": { "textData": name },
		  	 success: function(data){
		  		 if( data == "1" ){
		  		   $("#fail").show() ;
		  	   }else{
		  		   $("#success").show() ;
		  	   }
		 	  }
	   }) ;
	   function test(){
		   
	   }
	  
	   
   }
</script>
</head>
<body>
	<s:form cssClass="container-fluid" action="regist" namespace="/user" method="POST">
		<div class="form-horizontal">
			<fieldset>
			<legend><h2>用户注册</h2></legend>
			<div class="form-group has-feedback input-lg">
				<label class="col-md-5 control-label"><span style="color: red">*</span>用户名：</label>
				<div class="col-md-6">
					<s:textfield cssClass="validate[required,custom[noSpecialCaracters],length[0,20]]  input-lg" onblur="verifyUsername() ;" placeholder="username" name="user.name" />
					<span style="color:red ;" id="success">该用户名可用</span>
					<span style="color:red ;" id="fail">用户名已存在</span>
				</div>
			</div>
			<div class="form-group input-lg">
				<label class="col-md-5 control-label"><span style="color: red">*</span> 密码：</label>
				<div class="col-md-5">
					<s:password cssClass="validate[required,length[6,11]] input-lg" placeholder="password" name="user.password" id="password"/> 
				</div>
			</div>
			<div class="form-group input-lg">
				<label class="col-md-5 control-label"><span style="color: red">*</span>确认密码：</label>
				<div class="col-md-5">
					<s:password cssClass="validate[required, confirm[password]] input-lg" placeholder="confirm  passowrd" name="confirpassword"/>
				</div>
			</div>
			</fieldset>
			<div class="form-group">
				<label class="col-md-6 control-label">
					<button class="btn btn-primary btn-lg" type="submit">点击注册</button>
				</label>
			</div>
  		</div>
	</s:form>
</body>
</html>