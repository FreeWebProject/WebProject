<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>login</title>
</head>
<body>
	<s:form cssClass="container" action="login" namespace="/user" method="post">
		<div class="form-group">
			<label>用户名</label>
			<s:textfield cssClass="form-control" name="user.name" />
		</div>
		<div class="form-group">
			<label>密码</label>
			<s:textfield cssClass="form-control" name="user.password" />
		</div>
		<button class="btn btn-primary" type="submit">登陆</button>
	</s:form>
</body>
</html>