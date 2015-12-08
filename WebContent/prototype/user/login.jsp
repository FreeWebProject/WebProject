<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>login</title>
</head>
<body>
	<s:form cssClass="container-fluid" action="login" namespace="/user" method="POST">
		<div class="form-horizontal" style="margin-top: 150px">
			<div class="form-group has-feedback">
				<label class="col-md-5 control-label input-lg">用户名:</label>
				<div class="col-md-2">
					<s:textfield cssClass="form-control input-lg" name="user.name" />
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label input-lg">密码:</label>
				<div class="col-md-2">
					<s:password cssClass="form-control input-lg" name="user.password" />
				</div>
			</div>
  			<div class="form-group">
				<label class="col-md-6 control-label">
					<button class="btn btn-primary btn-lg" type="submit">登陆</button>
				</label>
  			</div>
		</div>
	</s:form>
</body>
</html>