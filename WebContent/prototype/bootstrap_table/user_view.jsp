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
	<s:form cssClass="container-fluid mt40" action="view" namespace="/user" method="POST" style="margin-top:30px">
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
	    				<s:if test="sex eq '0'">
	    					男
	    				</s:if>
	    				<s:else>
	    					女
	    				</s:else>
	    			</div>
	    			<label class="col-md-2 control-label">生日</label>
	    			<div class="col-md-4">
	    				<s:property value="birthday" />
	    			</div>
	    		</div>
	    		<div class="form-group">
	    			<label class="col-md-2 control-label">兴趣爱好</label>
	    			<div class="col-md-4">
	    			
						<s:generator val="%{hobby}" separator="," id="iter1">
						</s:generator>
						<s:iterator status="st" value="#request.iter1" id="name1">
							<s:if test="name1 eq '2'">
								足球
							</s:if>
						
							<s:property value="name1" />
						</s:iterator>
						
						
					</div>
	    			<label class="col-md-2 control-label">学历</label>
	    			<div class="col-md-4">
		    			<s:if test="education eq '0'">
		    				小学
		    			</s:if>
		    			<s:elseif test="education eq '1'">
		    				初中
		    			</s:elseif>
		    			<s:elseif test="education eq '2'">
		    				高中
		    			</s:elseif>
		    			<s:elseif test="education eq '3'">
		    				本科
		    			</s:elseif>
		    			<s:elseif test="education eq '4'">
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
	    				<s:property value="phone" />
	    			</div>
	    			<label class="col-md-2 control-label">邮箱</label>
	    			<div class="col-md-4">
	    				<s:property value="email" />
	    			</div>
	    		</div>
	    		<div class="form-group">
	    			<label class="col-sm-2 control-label">自我介绍</label>
	    			<div class="col-sm-10">
	    				<s:property value="self" />
	    			</div>
	    		</div>
			</s:iterator>
		</div>
		<div class="navbar-fixed-bottom" style="margin-bottom:10px">
  			<div class="container-fluid text-center">
  				<button class="btn btn-default" type="button" onclick="ad_close() ;">关闭</button>
		  	</div>
  		</div>
	</s:form>
</body>
</html>