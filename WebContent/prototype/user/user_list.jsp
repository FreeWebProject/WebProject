<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>Insert title here</title>
</head>
<body>
	<table class="table table-bordered table-striped table-hover">
		<thead>
			<th>ID</th>
			<th>用户名</th>
			<th>密码</th>
		</thead>
		<tbody>
			<s:iterator value="userList">
				<tr>
					<td><s:property value="id" /></td>
					<td><s:property value="name" /></td>
					<td><s:property value="password" /></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>