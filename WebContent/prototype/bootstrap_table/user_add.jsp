<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>新增用户</title>
<script type="text/javascript">
</script>
</head>
<body>
	<s:form cssClass="container-fluid form-horizontal mt20" action="" namespace="" method="post">
	
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
		
	</s:form>
</body>
</html>