<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>查看页面</title>
<script type="text/javascript">
</script>
</head>
<body>
	<s:form cssClass="container-fluid mt20" action="view" namespace="/user" method="POST">
  		<div class="form-horizontal">
    		<div class="form-group">
    			<label class="col-md-2 control-label">用户名</label>
    			<div class="col-md-4">
    				<s:property value="user.name" />
    			</div>
    			<label class="col-md-2 control-label">密码</label>
    			<div class="col-md-4">
    				<s:property value="user.password" />
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label">性别</label>
    			<div class="col-md-4">
    				<s:if test="user.sex eq 0">
    					男
    				</s:if>
    				<s:if test="user.sex eq 1">
    					女
    				</s:if>
    			</div>
    			<label class="col-md-2 control-label">生日</label>
    			<div class="col-md-4">
    				<s:property value="user.birthday" />
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label">兴趣爱好</label>
    			<div class="col-md-4">
    				<s:property value="user.hobby" />
				</div>
    			<label class="col-md-2 control-label">学历</label>
    			<div class="col-md-4">
	    			<s:if test="user.education eq '0'">
	    				小学
	    			</s:if>
	    			<s:elseif test="user.education eq '1'">
	    				初中
	    			</s:elseif>
	    			<s:elseif test="user.education eq '2'">
	    				高中
	    			</s:elseif>
	    			<s:elseif test="user.education eq '3'">
	    				本科
	    			</s:elseif>
	    			<s:elseif test="user.education eq '4'">
	    				硕士
	    			</s:elseif>
	    			<s:else>
	    				博士
	    			</s:else>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-md-2 control-label">联系电话</label>
    			<div class="col-md-4">
    				<s:property value="user.phone" />
    			</div>
    			<label class="col-md-2 control-label">邮箱</label>
    			<div class="col-md-4">
    				<s:property value="user.email" />
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="col-sm-2 control-label">自我介绍</label>
    			<div class="col-sm-10">
    				<s:property value="user.self" escape="false"/>
    			</div>
    		</div>
		</div>
		<div class="navbar-fixed-bottom mb10">
  			<div class="container-fluid text-center">
  				<button class="btn btn-default" type="button" onclick="ad_close() ;">关闭</button>
		  	</div>
  		</div>
	</s:form>
</body>
</html>