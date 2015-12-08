<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>login</title>
<script type="text/javascript">
	function one(){
		art.dialog('简单愉悦的接口，强大的表现力，优雅的内部实现', function(){
			alert( $("[name = 'button']").val() ) ;
		},function(){alert('cancel it');});
	}
	function two(){
		art.dialog({
			title: '欢迎',
			content: "欢迎使用该组建",
			icon: "succeed",
			follow: "hello",
			ok: function(){
				this.title("警告").content("请注意，2秒后关闭").lock().time(2) ;
				return false ;
			},
			cancel: function(){
				this.close() ;
				return false ;
			}
		}) ;
	}
</script>
</head>
<body>
	<s:form cssClass="container-fluid">
		<input class="btn btn-lg" type="button" name="button1" onclick="one() ;" value="点击我1"/>
		<input class="btn btn-lg" type="button" id="button2" onclick="two() ;" value="点击我2"/>
	</s:form>
</body>
</html>