<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>Insert title here</title>
<style type="text/css">
 #top{margin-top: 20px ;}
</style>
</head>
<body>
	<div class="container-fluid">
		<!-- 标签页 -->
		<div id="top">
			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a href="javastript: ;">first</a></li>
				<li role="presentation"><a href="javastript: ;">second</a></li>
				<li role="presentation"><a href="javastript: ;">three</a></li>
			</ul>
		</div>
		
		<!-- 胶囊式标签页 -->
		<div id="top">
			<ul class="nav nav-pills">
				<li role="presentation" class="active"><a href="javastript: ;">first</a></li>
				<li role="presentation"><a href="javastript: ;">second</a></li>
				<li role="presentation"><a href="javastript: ;">three</a></li>
			</ul>
			<ul class="nav nav-pills nav-stacked" style="width: 20%; margin-top: 10px">
				<li role="presentation" class="active"><a href="javastript: ;">first</a></li>
				<li role="presentation"><a href="javastript: ;">second</a></li>
				<li role="presentation"><a href="javastript: ;">three</a></li>
			</ul>
		</div>
		
		<!-- 两端对齐 -->
		<div id="top">
			<ul class="nav nav-pills nav-justified">
				<li role="presentation" class="active"><a href="javastript: ;">first</a></li>
				<li role="presentation"><a href="javastript: ;">second</a></li>
				<li role="presentation"><a href="javastript: ;">three</a></li>
			</ul>
		</div>
		
		<!-- 带有下拉菜单的导航栏 -->
		<div id="top">
			<ul class="nav nav-pills nav-justified">
				<li role="presentation" class="active"><a href="javastript: ;">first</a></li>
				<li role="presentation"><a href="javastript: ;">second</a></li>
				<li role="presentation" class="dropdown">
					<a class="btn btn-default dropdown-toggle"
						id="dropMenu1" aria-haspopup="true" aria-expanded="false"
						data-toggle="dropdown">
						下拉菜单(带分类)<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" aria-labelledby="dropMenu1">
						<li class="dropdown-header">兴趣爱好</li>
						<li><a href="#">跑步</a></li>
						<li><a href="#">游泳</a></li>
						<li class="dropdown-header">居住地点</li>
						<li><a href="#">北京</a></li>
						<li><a href="#">广州</a></li>
					</ul>
				</li>
			</ul>
		</div>		
	</div>
</body>
</html>