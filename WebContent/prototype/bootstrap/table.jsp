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
  	  <div class="table">
  			<h1>表格</h1>
  		<table class="table table-striped">
  			<thead>
  				<th class="active">序号</th>
  				<th class="success">姓名</th>
  				<th class="warning">性别</th>
  				<th class="danger">年龄</th>
  				<th class="info">出生地址</th>
  				<th class="danger">工作单位</th>
  			</thead>
  			<tbody>
  				<tr>
  					<td>1</td>
  					<td>张三</td>
  					<td>男</td>
  					<td>22</td>
  					<td>北京</td>
  					<td>南京</td>
  				</tr>
  				<tr>
  					<td>2</td>
  					<td>李四</td>
  					<td>男</td>
  					<td>42</td>
  					<td>北京</td>
  					<td>南京</td>
  				</tr>
  				<tr>
  					<td>3</td>
  					<td>张四</td>
  					<td>男</td>
  					<td>22</td>
  					<td>北京</td>
  					<td>南京</td>
  				</tr>
  				<tr>
  					<td>4</td>
  					<td>张8</td>
  					<td>男</td>
  					<td>22</td>
  					<td>北京</td>
  					<td>南京</td>
  				</tr>
  			</tbody>
  			
  		</table>
  		<p>带边框表格table-border,鼠标悬停table-hover,带条纹table-striped,紧缩表格table-condensed</p>
  	  </div>
  	  
  	<!--   表单 -->
  	  <div class="form">
  	  	<h1>表单</h1>
  	  	<form  class="form-horizontal">
  	  		<div class="form-group has-success">
  	  			<label class="col-sm-1 control-lable">Email:</label>
  	  			<div class="col-sm-2">
  	  				<input type="text" class="form-control" placeholder="xx@example.com"/>
  	  			</div>
  	  			<label class="col-sm-1 control-lable">Password:</label>
  	  			<div class="col-sm-2">
  	  				<input type="password" class="form-control" />
  	  			</div>
  	  			<div class="col-sm-2">
  	  				<button type="submit" class="btn btn-default">submit</button>
  	  			</div>
  	  		</div>
  	  	</form>
  	  	
  	  	<!-- 内联样式 -->
  	  	<form class="form-inline">
  	  		<div class="form-group">
  	  			<input type="text" class="form-control" placeholder="xx@example.com"/>
  	  		</div>
  	  		<div class="form-group">
  	  				<input type="password" class="form-control" placeholder="password"/>
  	  		</div>
  	  		<div class="form-group">
  	  				<label><input type="checkbox"> rember me </label>
  	  		</div>
  	  		<button type="submit" class="btn btn-default">submit</button>
  	  	</form>
  	  	
  	  	<!-- Transfer cash -->
  	  	<form class="form-inline" style="margin-top: 20px ;">
  	  		<div class="form-group">
  	  			<div class="input-group">
  	  				<div class="input-group-addon">$</div>
  	  				<input type="text" class="form-control" placeholder="Amount"/>
  	  				<div class="input-group-addon">.00</div>
  	  			</div>
  	  				<button class="btn btn-default" type="button">Transfer cash</button>
  	  		</div>
  	  	</form>
  	  	
  	  	<!-- textarea -->
  	  	<div style="margin-top: 20px ;">
  	  		<textarea class="form-control" rows="3" cols="1" style="width: 20%"></textarea>
  	  	</div>
  	  	
  	  <!-- 	checkbox -->
  	  	<div class="checkbox">
  	  		<label> <input type="checkbox" value="option1">多选框一  </label>
  	  		<label> <input type="checkbox">多选框二 </label>
  	  		<label> <input type="checkbox" disabled>不可选择 </label>
  	  	</div>
  	  	
  	  	<!-- radio -->
  	  	<div class="radio">
  	  		<label> <input type="radio" name="sex" value="option1" id="" > 男 </label>
  	  		<label> <input type="radio" name="sex" value="option2" id="" checked> 女  </label>
  	  		<label> <input type="radio" name="sex" value="option3" id="" disabled> 不可选择  </label>
  	  	</div>
  	  	
  	  	<!-- select -->
  	  	<div class="select">
  	  		<select class="form-control" style="width: 10% ;">
  	  			<option>游泳</option>
  	  			<option>篮球</option>
  	  			<option>足球</option>
  	  		</select>
  	  		<select multiple class="form-control" style="width: 10% ;margin-top: 20px ;">
  	  			<option>游泳</option>
  	  			<option>篮球</option>
  	  			<option>足球</option>
  	  		</select>
  	  	</div>
  	  	
  	  	<!-- 禁用状态 -->
  	  	<div class="disable" id="top">
  	  		<input type="text" class="form-control" placeholder="这是不能输入内容的文本框" disabled style="width: 20% ;"/>
  	  		<p>说明：在div外部用&lt;fieldset disabled&gt;包裹，整个div内容都是不可选择的</p>
  	  		<input class="form-control" type="text" placeholder="Readonly input here…" readonly style="width: 20% ;">
  	  	</div>
  	  	
  	  	<!-- 校验状态与添加额外图标 -->
		<div id="top">
			<form class="form-horizontal">
				<div class="form-group has-success has-feedback" style="width: 20% ;">
					<label class="control-lable">input with success</label>
					<input type="text" class="form-control" placeholder="xx@example.com" />
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
				</div>
				<div class="form-group has-error has-feedback" style="width: 20% ;">
					<label class="control-lable">input with error</label>
					<input type="password" class="form-control" />
					<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>
				</div>
				<div class="form-group has-warning has-feedback" style="width: 20% ;">
					<label class="control-lable">input with warning</label>
					<input type="password" class="form-control" />
					<span class="glyphicon glyphicon-flash form-control-feedback" aria-hidden="true"></span>
				</div>
			</form>
		</div>
		
		<!-- 文本框高度与宽度 -->
		<div id="top">
			<div class="col-xs-2">
				<input class="form-control input-lg" type="text" placeholder="input-lg col-xs-2" />
			</div>
			<div class="col-xs-3">
				<input class="form-control" type="text" placeholder="default col-xs-3" >
			</div>
			<div class="col-xs-4">
				<input class="form-control input-sm" type="text" placeholder="input-sm col-xs-4" />
			</div>
		</div>
		
		<div id="top">
			<input />
		</div>
		
		<!-- 按钮 -->
		<div id="top">
			<div class="form-inline">
				<a class="btn btn-default" href="#" role="button">link</a>
				<button class="btn btn-default" type="button">button</button>
				<input class="btn btn-default" value="input" type="button" />
			</div>
		</div>
		
		<div id="top">
			<button class="btn btn-default btn-lg" type="button">default</button>
			<button class="btn btn-primary btn-lg" type="button">primary</button>
			<button class="btn btn-success btn-sm" type="button">success</button>
			<button class="btn btn-warning btn-sm" type="button">warning</button>
			<button class="btn btn-info btn-xs" type="button">info</button>
			<button class="btn btn-danger btn-xs disabled" type="button">danger</button>
		</div>
		
		<!-- 图片样式 -->
		<div id="top"> 
			<img class="img-round" alt="我是阿里哦" src="prototype/bootstrap/image/im.jpg">
			<img class="img-circle" alt="我是阿里哦" src="prototype/bootstrap/image/im.jpg">
			<img class="img-thumbnail" alt="我是阿里哦" src="prototype/bootstrap/image/im.jpg">
		</div>



  	
  	</div>
</body>
</html>