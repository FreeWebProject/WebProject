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
					<a class="dropdown-toggle"
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
		
		<!-- 路径导航	 -->	
		<div id="top">
			<ol class="breadcrumb">
				<li>路径导航====>></li>
				<li><a href="javascript: ;">home</a></li>
				<li><a href="javascript: ;">family</a></li>
				<li  class="active">house</li>
			</ol>
		</div>
		
		<!-- 分页 -->
		
		<div id="top">
			<nav>
				<ul class="pagination pagination-lg">
					<li class="disabled">
						<a href="javascript: ;" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li class="active"><a href="javascript: ;">1</a></li>
					<li><a href="javascript: ;">2</a></li>
					<li><a href="javascript: ;">3</a></li>
					<li><a href="javascript: ;">4</a></li>
					<li><a href="javascript: ;">5</a></li>
					<li>
						<a href="javascript: ;" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
			</nav>
			
			<nav>
				<ul class="pager">
					<li><a href="javascript: ;">Previous</a></li>
					<li><a href="javascript: ;">Next</a></li>
				</ul>
			</nav>
		</div>
		
		<!-- 徽章 -->
		<div id="top">
			<ul class="nav nav-pills" role="tablist">
				<li role="presentation" class="active"><a href="javascript: ;">home<span class="badge">3</span></a></li>
				<li role="presentation"><a href="javascript: ;">family<span class="badge">63</span></a></li>
				<li role="presentation"><a href="javascript: ;">hours<span class="badge">23</span></a></li>
			</ul>
		</div>
		

	</div>
</body>
</html>