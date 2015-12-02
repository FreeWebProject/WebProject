<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>foot page</title>
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
	</div>
</body>
</html>