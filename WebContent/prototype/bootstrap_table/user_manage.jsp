<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>设置用户权限</title>
<script type="text/javascript">

	
	function save( mark ){
		alert( mark ) ;
		$.ajax( {
			url: "user/xxxxx.action",
			type: "post",
			dataType: "text",
			data: { "ajaxData": getJson( "userAnduserType" ) },
			success: function(data){
				if( mark == "saveAndClose"){
					ad_close() ;
				}else{
					ad_alert( SAVE_SUCCESS ) ;
				} 
			},
			error: function(data){
			} 
		} ) ;
		// ajax提交前先进行表单的验证
		$("form").validationEngine({
			success : function() {
			 		ajax_callText("user/xxxxx.action", getJson( "userAnduserType" ), function(data){
					if( mark == "saveAndClose"){
						ad_close() ;
					}else{
						ad_alert( SAVE_SUCCESS ) ;
					} 
				}) ;
			} ,
			ajax: true
		})
	}
	
</script>
</head>
<body>
	<s:form cssClass="container-fluid mt20" action="xxxxx" namespace="/user" method="POST">
		<s:hidden name="userAnduserType.userId" />
		<s:property value="userAnduserType.userId" />
  		<div class="form-horizontal">
  			<h1 class="text-center">设定用户角色</h1>
    		<div class="form-group">
    			<label class="col-sm-2 control-label btn-lg"><span class="text-danger">*</span>权限类别：</label>
    			<div class="col-sm-10 btn-lg">
    				<s:radio list="#{'0':'管理员','1':'校长','2':'教师','3':'学生'} " name="userAnduserType.typeId"/>
    			</div>
    		</div>
		</div>
		<div class="navbar-fixed-bottom mb10">
  			<div class="container-fluid text-center">
  				<button class="btn btn-primary" type="button" onclick="save( 'save' ) ;">保存</button>
  				<button class="btn btn-primary" type="button" onclick="save( 'saveAndClose' ) ;">保存并关闭</button>
  				<button class="btn btn-default" type="button" onclick="ad_close() ;">关闭</button>
		  	</div>
  		</div>
	</s:form>
</body>
</html>
