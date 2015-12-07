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
			<div class="form-group">
				<label class="col-md-5 control-label">用户名:</label>
				<div class="col-md-5">
					<s:textfield cssClass="" name="user.name" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-5 control-label">密码:</label>
				<div class="col-md-5">
					<s:password cssClass="" name="user.password" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-6 control-label"><input type="checkbox"> rember me </label>
  			</div>
  			<div class="form-group">
				<label class="col-md-6 control-label">
					<button class="btn btn-primary" type="submit">登陆</button>
				</label>
  			</div>
		</div>
	</s:form>
</body>
</html>