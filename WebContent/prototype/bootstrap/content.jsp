<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>foot page</title>
<style type="text/css">
	#top{margin-top: 20px}
	#introCarousel{margin: 0,auto ;}
</style>
<script type="text/javascript">
	$(function () {
		  $('[data-toggle="popover"]').popover() ;
		});
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row" style="margin: 0 ;">
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
			<div class="col-sm-1">col-sm-1</div>
		</div>
		
		<h1>this is h1<small>small(&lt;small &gt;&lt;/small &gt;)</small></h1>
		
		<p class="lead">this is lead</p>
		
		<p>you can use the mark tag to <mark>highlight</mark> text</p>
		
		<del>this is the del content</del> &nbsp; &nbsp;&nbsp;&nbsp;
		 <s>this is unuse content</s>&nbsp;&nbsp;&nbsp;&nbsp;
		<ins>this is the extra insert</ins> &nbsp;&nbsp;&nbsp; 
		<em>这是斜体</em>
		<p>hello,i am <strong>strong</strong> font</p>
		
		<p class="text-left">左对齐</p>
		<p class="text-center">居中</p>
		<p class="text-right">右对齐</p>
		
		<p class="text-lowercase">this is lowercase text</p>
		<p class="text-uppercase">this is uppercase text.</p>
		<p class="text-capitalize">this is the first letter upeercase text</p>
		
		<p>把鼠标放在<abbr title="中华人民共和国">中国</abbr>这两个字上可以看见全名</p>
		<ul>
			<li>无序列表一</li>
			<li>无序列表二</li>
		</ul>
		
		<ol>
			<li>有序列表一</li>
			<li>有序列表二</li>
		</ol>
		
		<ul class="list-unstyled">
			<li>无样式列表一</li>
			<li>无样式列表二</li>
		</ul>
		
		<ul class="list-inline">
			<li>这是</li>
			<li>在同一行的</li>
			<li>列表</li>
		</ul>
		
		<dl>
			<dt>这是标题</dt>
			<dd>这是针对标题进行的描述</dd>
		</dl>
		
		<dl class="dl-horizontal">
			<dt>这是标题</dt>
			<dd>这是针对标题进行的横向描述</dd>
		</dl>
		
		<p>这是标记用户<kbd>通过键盘</kbd>输入的内容</p>
		
		<pre>&lt;p&gt;这是代码块&lt;p&gt;</pre>
		
		<p>这是标记变量<var>y</var> = <var>x</var>+<var>z</var></p>
		
		<samp>this is the output content </samp>
		
			<!-- 图片样式 -->
		<div id="top"> 
			<img class="img-round" alt="我是阿里哦" src="prototype/bootstrap/image/im.jpg">
			<img class="img-circle" alt="我是阿里哦" src="prototype/bootstrap/image/im.jpg">
			<img class="img-thumbnail" alt="我是阿里哦" src="prototype/bootstrap/image/im.jpg">
		</div>
		
		<!-- 文本颜色 -->
		<div id="top">
			<p class="text-muted">the color is muted</p>
			<p class="text-success">the color is success</p>
			<p class="text-primary">the color is primary</p>
			<p class="text-info">the color is info</p>
			<p class="text-warning">the color is warning</p>
			<p class="text-danger">the color is danger</p>
		</div>
		
		<!-- 颜色变体 -->
		<div id="top">
			<span class="label label-default">New</span>
			<span class="label label-success">success</span>
			<span class="label label-primary">primary</span>
			<span class="label label-info">info</span>
			<span class="label label-warning">warning</span>
			<span class="label label-danger">danger</span>
		</div>
		
		<!-- 背景色 -->
		<div id="top">
			<p class="bg-muted">the background color is muted</p>
			<p class="bg-success">the background color is success</p>
			<p class="bg-primary">the background color is primary</p>
			<p class="bg-info">the background color is info</p>
			<p class="bg-warning">the background color is warning</p>
			<p class="bg-danger">the background color is danger</p>
		</div>
		
		<!-- 左右浮动 -->
		<div id="top" class="clearfix">
			<div class="pull-left">
				<button class="btn btn-primary" type="button">pull-left</button>
			</div>
			<div class="pull-right">
				<button class="btn btn-primary" type="button">pull-right</button>
			</div>
		</div>

		<!-- 任意元素居中 -->
		<div id="top" class="center-block">
			<div class="show">这是显示的元素,下方是隐藏的元素，只是看不到</div>
			<div class="hide">这是隐藏的元素</div>
		</div>
		
		<!-- 巨幕 -->
		<div id="top">
			<div class="jumbotron">
				<h1>Hello,world</h1>
				<p>Welcome to this website ,here you will find more you like ......</p>
				<p><a href="javascript: ;" role="button" class="btn btn-primary">Learn more</a></p>
			</div>
		</div>
		
		<!-- 缩略图 -->
		<div id="top">
			<div class="row">
				<div class="col-xs-6 col-md-3">
					<a href="javascript: ;" class="thumbnail">
						<img alt="" src="prototype/bootstrap/image/laoshu.jpg">
					</a>
				</div>
				<div class="col-xs-6 col-md-3">
					<a href="javascript: ;" class="thumbnail">
	 					<img alt="" src="prototype/bootstrap/image/im.jpg">
					</a>
				</div>
				<div class="col-xs-6 col-md-3">
					<a href="javascript: ;" class="thumbnail">
	 					<img alt="" src="prototype/bootstrap/image/pika.jpg">
					</a>
				</div>
				<div class="col-xs-6 col-md-3">
					<a href="javascript: ;" class="thumbnail">
	 					<img alt="" src="prototype/bootstrap/image/rolse.gif">
					</a>
				</div>
			</div>
		</div>
		
		<!-- 进度条 -->
		
		<div id="top">
			<div class="progress">
				<div class="progress-bar progress-bar-info" role="progressbar"
					aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
					style="min-width: 2em; width: 60%">60%</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-danger" role="progressbar"
					aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
					style="min-width: 2em; width: 20%">20%</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar"
					aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"
					style="min-width: 2em; width: 30%">30%</div>
			</div>
		</div>
		
		<div id="top">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">title</h3>
				</div>
				<div class="panel-body">
					this is the content
				</div>
				<div class="panel-footer">this is footer</div>
			</div>
		</div>
		
		<div class="well">
			hello , I am well！！
		</div>
		
		<!-- 弹出框 -->
		<div id="top">
			<button type="button" class="btn btn-danger" data-toggle="popover" title="这是标题" 
			data-content="这是内容" data-placement="top">点击我弹出/隐藏内容</button>
			
			<button type="button" class="btn btn-danger" data-toggle="popover" data-trigger="focus" title="这是标题" 
			data-content="这是内容" data-placement="top">焦点离开，内容消失</button>
		</div>
		
		
		<!--轮播 -->
		<div id="top">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			  </ol>
			
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			    <div class="item active">
			      <img src="http://p2.so.qhimg.com/t0112d9587a2e75b35c.jpg" alt="first">
			      <div class="carousel-caption">
			       	beautiful
			      </div>
			    </div>
			    <div class="item">
			      <img src="http://p4.so.qhimg.com/t014bd3b137254a0679.jpg" alt="second">
			      <div class="carousel-caption">
			        cool
			      </div>
			    </div>
			    <div class="item">
			      <img src="http://p4.so.qhimg.com/t017e6ddc00adbba574.jpg" alt="three">
			      <div class="carousel-caption">
			       	perfect
			      </div>
			  </div>
			
			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
		
	</div>
</body>
</html>