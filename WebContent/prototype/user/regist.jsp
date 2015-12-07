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

</script>
</head>
<body>
	<s:form cssClass="container-fluid" action="regist" namespace="/user" method="POST">
		<div class="form-horizontal">
			<h1 class="text-center">用户注册</h1>
			<div class="form-group">
				<label class="col-md-5 control-label"><span style="color: red">*</span>姓名：</label>
				<div class="col-md-6">
					<s:textfield cssClass="validate[required,custom[noSpecialCaracters],length[0,20]]" name="user.name" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-5 control-label"><span style="color: red">*</span>性别：</label>
				<div class="col-xs-2">
	  	  			<s:radio list="#{ '0':'男','1':'女' }" name="user.sex" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label"><span style="color: red">*</span>年龄：</label>
				<div class="col-md-5">
					<s:textfield cssClass="validate[required]" name="user.age" /> 
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label"><span style="color: red">*</span>出生年月：</label>
				<div class="col-md-5" >
					<s:textfield cssClass="validate[required] form-date"  name="user.birthday" /> 
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label">兴趣爱好：</label>
				<div class="col-md-3">
					<s:checkboxlist list="#{'0':'篮球','1':'足球','2':'乒乓球','3':'羽毛球'}" name="user.hobby" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label"><span style="color: red">*</span>学历：</label>
				<div class="col-md-5">
					<s:select list="#{'0':'小学','1':'初中','2':'高中','3':'本科'}" name="user.education" />
				</div>
			</div> 
			<div class="form-group">
				<label class="col-md-5 control-label"><span style="color: red">*</span>手机号：</label>
				<div class="col-md-5">
					<s:textfield cssClass="validate[required,custom[phone]]" name="user.phone" id="phone"/> 
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label"><span style="color: red">*</span> 密码：</label>
				<div class="col-md-5">
					<s:password cssClass="validate[required,length[6,11]]" name="user.password" id="password"/> 
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label"><span style="color: red">*</span>确认密码：</label>
				<div class="col-md-5">
					<s:password cssClass="validate[required, confirm[password]]" name="confirpassword"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label"> 电子邮箱：</label>
				<div class="col-md-5">
					<s:textfield cssClass="validate[optional,custom[email]]" name="user.email" /> 
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label"> 自我介绍：</label>
				<div class="col-md-6">
					<s:textarea cssClass="validate[optional,length[6,300]]" name="user.self" /> 
				</div>
			</div>
		</div>
			<div class="navbar-fixed-bottom">
	  			<div class="container-fluid text-center">
	  				<button class="btn btn-primary" type="submit">提交</button>
			  	</div>
  			</div>
	</s:form>
</body>
</html>