<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>Insert title here</title>
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
  	  	<div class="disable" style="margin-top: 20px ;">
  	  		<input type="text" class="form-control" placeholder="这是不能输入内容的文本框" disabled style="width: 20% ;"/>
  	  		<p>说明：在div外部用&lt;fieldset disabled&gt;包裹，整个div内容都是不可选择的</p>
  	  		<input class="form-control" type="text" placeholder="Readonly input here…" readonly style="width: 20% ;">
  	  	</div>
  	  	
  	  	<!-- 校验状态与添加额外图标 -->
  	  	<div>
				<form class="form-horizontal">
					<div class="form-group has-success">
						<label class="col-sm-1 control-lable">Email:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control"
								placeholder="xx@example.com" />
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
			</div>
  	  	
  	  	
  	  	
  	  
  	  </div>
  	
  	</div>
</body>
</html>