<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>新增用户</title>
<script type="text/javascript">
 $(document).ready(function(){
	 alert( art.dialog.get( id )) ;
	 console.log( id );
 }) ;
 
</script>
</head>
<body>
	<s:form cssClass="container-fluid" action="director_list" namespace="/director" method="POST" cssStyle="margin-top: 30px;" >
  		<div class="form-horizontal">
  			<s:iterator value="userList">
	    		<div class="form-group">
	    			<label class="col-md-2 control-label">用户名</label>
	    			<div class="col-md-4">
	    				<s:property value="name" />
	    			</div>
	    			<label class="col-md-2 control-label">密码</label>
	    			<div class="col-md-4">
	    				<s:property value="password" />
	    			</div>
	    		</div>
	    		<div class="form-group">
	    			<label class="col-md-2 control-label">性别</label>
	    			<div class="col-md-4">
	    				<s:property value="sex" />
	    			</div>
	    			<label class="col-md-2 control-label">年龄</label>
	    			<div class="col-md-4">
	    				<s:property value="age" />
	    			</div>
	    		</div>
	    		<div class="form-group">
	    			<label class="col-md-2 control-label">生日</label>
	    			<div class="col-md-4">
	    				<s:property value="birthday" />
	    			</div>
	    			<label class="col-md-2 control-label">兴趣爱好</label>
	    			<div class="col-md-4">
	    				<s:property value="hobby" />
	    			</div>
	    		</div>
	    		<div class="form-group">
	    			<label class="col-md-2 control-label">学历</label>
	    			<div class="col-md-4">
	    				<s:property value="education"/>
	    			</div>
	    			<label class="col-md-2 control-label">联系电话</label>
	    			<div class="col-md-4">
	    				<s:property value="phone" />
	    			</div>
	    		</div>
	    		<div class="form-group">
	    			<label class="col-md-2 control-label">邮箱</label>
	    			<div class="col-md-4">
	    				<s:property value="email" />
	    			</div>
	    			<label class="col-md-2 control-label">自我介绍</label>
	    			<div class="col-md-4">
	    				<s:property value="self" />
	    			</div>
	    		</div>
			</s:iterator>
		</div>
		<div class="navbar-fixed-bottom">
  			<div class="container-fluid text-center">
  				<button class="btn btn-default" type="button" onclick="ad_close() ;">关闭</button>
		  	</div>
  		</div>
	</s:form>
</body>
</html>