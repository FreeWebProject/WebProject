<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<link rel="stylesheet" href="prototype/style/main.css">
<title>main page</title>
</head>
<body>
	<div class="container-fluid">
		<div class="head bg-info">
			<iframe src="prototype/head.jsp" scrolling="no"></iframe>
		</div>
		<div class="content">
			<div class="content-left">
				<iframe src="prototype/left.jsp"></iframe>
			</div>
			<div class="content-right">
				<iframe src="prototype/content.jsp"></iframe>
			</div>
		</div>
		<div class="foot">
			<iframe src="prototype/foot.jsp" scrolling="no"></iframe>
		</div>
	</div>
</body>
</html>