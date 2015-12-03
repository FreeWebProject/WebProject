<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"%>
<base target="content">
<title>foot page</title>
<style type="text/css">
html, body, .container-fluid {
	height: 100%;
}
</style>
<script type="text/javascript">
  	$( document ).ready( function() {
  		
  		// 菜单的点击事件
  		$( "[ role = 'presentation' ]" ).click( function() {
  			// 如果当前是激活的，不做处理，如果不是，其他同辈元素去掉active样式，当前的加上active样式
  			if( $( this ).attr( "class" ) == "active" ) {
  				
  			} else {
  				$( this ).siblings().removeClass( "active" ) ;
  				$( this ).addClass( "active" ) ;
  			}
  		} ) ;
  		
  	} ) ;
</script>
</head>
<body>
	<div class="container-fluid">
		<ul class="nav nav-pills nav-stacked">
			<li class="active text-center" id="menu" role="presentation"><a
				href="javascript: ;">功能菜单</a></li>
		</ul>

		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="false">

			<!-- one -->
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">菜单列表 </a>
					</h4>
				</div>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
				<div class="panel-body">
					<ul class="nav nav-pills nav-stacked">
						<li class="active" role="presentation">
							<a href="prototype/bootstrap/content.jsp">页面内容</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap/table.jsp">表格和控件</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap/downlist.jsp">下拉列表</a>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- two -->
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">bootstrap-table </a>
					</h4>
				</div>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
				<div class="panel-body">
					<ul class="nav nav-pills nav-stacked">
						<li role="presentation">
							<a href="user/queryAll.action">用户列表（no-bt）</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap_table/data-toggle.jsp">使用 data 属性的方式</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap_table/bootstrapTable.jsp">通过 javascript 的方式</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap_table/jsonText.jsp">后台传json测试</a>
						</li>
					</ul>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>