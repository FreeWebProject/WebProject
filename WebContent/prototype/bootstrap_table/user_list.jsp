<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>用户列表（by bt）</title>
</head>
<body>
	<table data-toggle="table" data-url="user/queryAllResultJson.action">
		<thead>
			<tr>
				<th data-field="id">ID</th>
				<th data-field="name">用户名</th>
				<th data-field="password">密码</th>
			</tr>
		</thead>
	</table>
</body>
</html>