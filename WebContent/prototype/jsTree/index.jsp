<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<link rel="stylesheet" href="common/jsTree/themes/default/style.css">
<script type="text/javascript" src="common/jsTree/jstree.js"></script>
<script type="text/javascript">

	$(function() {
		$("#jstree").jstree({
			'core' : {
				'data' : {
					"url" : "userManager/message.action",
					'dataType' : "json"
				},
				'state' : {
					'opened' : true
				},
				'checkbox' : {
					"keep_selected_style" : false
				}
			},
			"plugins" : [ "checkbox", "state" ]
		});

	});

	
</script>

<title>jsTree</title>
</head>
<body>
	<div id="jstree">
	<!-- 	<ul>
			<li>Root node 1
				<ul>
					<li id="child_node_1"> Child node 1</li>
					<li>Child node 2</li>
				</ul>
			</li>
			<li>Root node 2</li>
		</ul> -->
	</div>
	

</body>
</html>