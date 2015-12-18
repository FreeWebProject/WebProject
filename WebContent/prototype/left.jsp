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
  				$( "[ role = 'presentation' ]" ).removeClass( "active" ) ;
  				$( this ).addClass( "active" ) ;
  			}
  		} ) ;
  		
  	} ) ;
</script>
</head>
<body>
	<div class="container-fluid">
		<ul class="nav nav-pills nav-stacked">
			<li class="active text-center" id="menu"><a
				href="javascript: ;">功能菜单</a></li>
		</ul>

		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

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
							<a href="prototype/bootstrap/content.jsp">页面文字格式</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap/table.jsp">表格和控件</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap/downlist.jsp">下拉列表</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap/navigate.jsp">导航栏</a>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- two -->
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">bootstrap-table </a>
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
						<li role="presentation">
							<a href="prototype/bootstrap_table/user_list.jsp">用户列表（by-bt）</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap_table/user_roleList.jsp">角色设定</a>
						</li>
						<li role="presentation">
						
							<!-- bootstrapTableExamples -->
							<div class="panel-group" id="bootstrapTableExamples" role="tablist" aria-multiselectable="false">
							
								<!-- basic -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="basic">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse" data-parent="#bootstrapTableExamples" href="#basicOne" aria-expanded="false">Basic </a>
										</h4>
									</div>
								</div>
								<div id="basicOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="basic">
									<div class="panel-body">
										<ul class="nav nav-pills nav-stacked">
											<li role="presentation">
												<a href="prototype/bootstrap_table/basic/tableFromHtml.jsp">Table from html</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/basic/tableFromData.jsp">Table from data</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/basic/tableFromUrl.jsp">Table from url</a>
											</li>
										</ul>
									</div>
								</div>
								
								<!-- style -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="style">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse" data-parent="#bootstrapTableExamples" href="#styleOne" aria-expanded="false">Style</a>
										</h4>
									</div>
								</div>
								<div id="styleOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="style">
									<div class="panel-body">
										<ul class="nav nav-pills nav-stacked">
											<li role="presentation">
												<a href="prototype/bootstrap_table/style/classes.jsp">classes</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/style/rowStyle.jsp">RowStyle</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/style/CellStyle.jsp">CellStyle</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/style/align.jsp">Align</a>
											</li>
										</ul>
									</div>
								</div>
								
								<!-- sort -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="sort">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse" data-parent="#bootstrapTableExamples" href="#sortOne" aria-expanded="false">Sort</a>
										</h4>
									</div>
								</div>
								<div id="sortOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="sort">
									<div class="panel-body">
										<ul class="nav nav-pills nav-stacked">
											<li role="presentation">
												<a href="prototype/bootstrap_table/sort/basicSort.jsp">Basic Sort</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/sort/customSort.jsp">Custom Sort</a>
											</li>
										</ul>
									</div>
								</div>
								
								<!-- columns -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="columns">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse" data-parent="#bootstrapTableExamples" href="#columnsOne" aria-expanded="false">Columns</a>
										</h4>
									</div>
								</div>
								<div id="columnsOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="columns">
									<div class="panel-body">
										<ul class="nav nav-pills nav-stacked">
											<li role="presentation">
												<a href="prototype/bootstrap_table/columns/basicColumns.jsp">Basic Columns</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/columns/largeColumns.jsp">Large Columns</a>
											</li>
										</ul>
									</div>
								</div>
								
								<!-- select -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="select">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse" data-parent="#bootstrapTableExamples" href="#selectOne" aria-expanded="false">Select</a>
										</h4>
									</div>
								</div>
								<div id="selectOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="select">
									<div class="panel-body">
										<ul class="nav nav-pills nav-stacked">
											<li role="presentation">
												<a href="prototype/bootstrap_table/select/radioSelect.jsp">Radio Select</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/select/checkboxSelect.jsp">Checkbox Select</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/select/disabledCheckbox.jsp">Disabled Checkbox</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/select/singleCheckbox.jsp">Single Checkbox</a>
											</li>
										</ul>
									</div>
								</div>
								
								<!-- toolbar -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="toolbar">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse" data-parent="#bootstrapTableExamples" href="#toolbarOne" aria-expanded="false">Toolbar</a>
										</h4>
									</div>
								</div>
								<div id="toolbarOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="toolbar">
									<div class="panel-body">
										<ul class="nav nav-pills nav-stacked">
											<li role="presentation">
												<a href="prototype/bootstrap_table/toolbar/basicToolbar.jsp">Basic Toolbar</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/toolbar/customToolbar.jsp">Custom Toolbar</a>
											</li>
										</ul>
									</div>
								</div>
								
								<!-- pagination -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="pagination">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse" data-parent="#bootstrapTableExamples" href="#paginationOne" aria-expanded="false">Pagination</a>
										</h4>
									</div>
								</div>
								<div id="paginationOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="pagination">
									<div class="panel-body">
										<ul class="nav nav-pills nav-stacked">
											<li role="presentation">
												<a href="prototype/bootstrap_table/pagination/clientSide.jsp">Client Side</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/pagination/serverSide.jsp">Server Side</a>
											</li>
										</ul>
									</div>
								</div>
								
								<!-- events -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="events">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse" data-parent="#bootstrapTableExamples" href="#eventsOne" aria-expanded="false">Events</a>
										</h4>
									</div>
								</div>
								<div id="eventsOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="events">
									<div class="panel-body">
										<ul class="nav nav-pills nav-stacked">
											<li role="presentation">
												<a href="prototype/bootstrap_table/events/basicEvents.jsp">Basic Events</a>
											</li>
											<li role="presentation">
												<a href="prototype/bootstrap_table/events/columnEvents.jsp">Column Events</a>
											</li>
										</ul>
									</div>
								</div>
								
							</div>
							
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap_table/format.jsp">Format</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap_table/currentRowCount.jsp">Show current row count using Formatter</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap_table/hideHeader.jsp">Hide Header</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap_table/cardView.jsp">Card View</a>
						</li>
						<li role="presentation">
							<a href="prototype/bootstrap_table/resetView.jsp">Reset View</a>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- three -->
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">uploadify </a>
					</h4>
				</div>
			</div>
			<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
				<div class="panel-body">
					<ul class="nav nav-pills nav-stacked">
						<li role="presentation">
							<a href="prototype/bootstrap_table/user_editInfo.jsp">uploadify</a>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- four -->
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="ueditor">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion" href="#ueditorOne" aria-expanded="true" aria-controls="ueditorOne">UEditor </a>
					</h4>
				</div>
			</div>
			<div id="ueditorOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="ueditor">
				<div class="panel-body">
					<ul class="nav nav-pills nav-stacked">
						<li role="presentation">
							<a href="prototype/ueditor/index.jsp">index</a>
						</li>
					</ul>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>