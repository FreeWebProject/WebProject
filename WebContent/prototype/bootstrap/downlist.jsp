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
	<form class="container-fluid">
		<!-- 按钮样式 -->
		<div class="buttonstyle" id="top">
			<button type="button" class="btn btn-lg" aria-lable="left_align">
				<span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
			</button>
			<button type="button" class="btn btn-default" aria-lable="center_align">
				<span class="glyphicon glyphicon-align-center" aria-hidden="true"></span>
			</button>
			<button type="button" class="btn btn-default" aria-lable="left_align">
				<span class="glyphicon glyphicon-star" aria-hidden="true"></span>star
			</button>
			<button type="button" class="btn btn-lg" aria-lable="left_align">
				<span class="glyphicon glyphicon-star" aria-hidden="true"></span>star
			</button>
		</div>
		
		<!-- 下拉菜单(带分类) -->
		<div id="top" class="dropdown">
			<button type="button" class="btn btn-default dropdown-toggle" id="dropMenu1" aria-haspopup="true" aria-expanded="true" data-toggle="dropdown">
				下拉菜单(带分类)<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" aria-labelledby="dropMenu1">
				<li class="dropdown-header">兴趣爱好</li>
				<li><a href="#">跑步</a></li>
				<li><a href="#">游泳</a></li>
				<li class="dropdown-header">居住地点</li>
				<li><a href="#">北京</a></li>
				<li><a href="#">广州</a></li>
			</ul>
		</div>
		<!--  上拉菜单（带分割线和禁用的）-->
		<div class="dropup" style="margin-top: 40px ;">
			<button type="button" class="btn btn-default dropdown-toggle" id="dropMenu1" aria-haspopup="true" aria-expanded="true" data-toggle="dropdown">
				上拉菜单（带分割线和禁用的）<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" aria-labelledby="dropMenu1">
				<li><a href="#">跑步</a></li>
				<li><a href="#">游泳</a></li>
				<li role="separator" class="divider"></li>
				<li><a href="#">篮球</a></li>
				<li class="disabled"><a href="#">足球</a></li>
				<li><a href="#">铅球</a></li>
			</ul>
		</div>
		
		<!-- 按钮组 -->
		<div id ="top" class="btn-group btn-group-lg" role="group">
			<button type="button" class="btn btn-default">left</button>		
			<button type="button" class="btn btn-primary">center</button>	
			<button type="button" class="btn btn-danger">right</button>	
		</div>
		
		<!-- 按钮工具栏 -->
		<div id="top" class="btn-toolbar" role="toolbar">
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-default">1</button>
				<button type="button" class="btn btn-default">2</button>
				<button type="button" class="btn btn-default">3</button>
			</div>
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-default">4</button>
				<button type="button" class="btn btn-default">5</button>
				
			</div>
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-default">6</button>
				<button type="button" class="btn btn-default">7</button>
				<button type="button" class="btn btn-default">8</button>
				<button type="button" class="btn btn-default">9</button>
			</div>
		</div>
		
		<!-- 垂直按钮组 -->
		<div id="top" class="btn-group-vertical" role="group">
			<button type="button" class="btn btn-default">button</button>
			<button type="button" class="btn btn-default">button</button>
			<div class="dropdown">
				<button type="button" class="btn btn-default dropdown-toggle" id="dropMenu1" aria-haspopup="true" aria-expanded="true" data-toggle="dropdown">
					下拉菜单(带分类)<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" aria-labelledby="dropMenu1">
					<li class="dropdown-header">兴趣爱好</li>
					<li><a href="#">跑步</a></li>
					<li><a href="#">游泳</a></li>
					<li class="dropdown-header">居住地点</li>
					<li><a href="#">北京</a></li>
					<li><a href="#">广州</a></li>
				</ul>
		   </div>
	   </div>
	   
	   
 </form>
</body>
</html>