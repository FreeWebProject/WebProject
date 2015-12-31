<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>layer start</title>
<script type="text/javascript">
	$(document).ready(function(){
		__config() ;
	}) ;
	
	// 小小提示层
	function alertMsg() {
		__alert( "Hello Layer" ) ;
	}
	
	// 弹出一个页面层
	function alertPage() {
			
		__open( "this is the content " ) ;
	}
	
	// 弹出一个iframe层
	function alertIframe() {
		__openIframe("prototype/bootstrap_table/user_list.jsp") ;
	}
	
	// 弹出一个loading层
	function alertLoading() {
		__loading() ;
	}
	
	// 弹出一个tips层
	function alertTips() {
		layer.tips( "hello tips!", "#test5" ) ;
	}
	
	//alert提示层
	function alert1() {
		layer.alert( "this is alert" ) ;
	}
	
	//alert询问层
	function alertAsk() {
		__confirm() ;
	}
	
	//prompt层
	function alertPrompt() {
 		__prompt() ;
		
	}
	
	//tab层
	function alertTab() {
		__tab() ;
	}
	
	//使用json获得图片
	function jsonPhoto() {
		/* layer.photos({
			photos: {
			    "title": "car", //相册标题
			    "id": 123, //相册id
			    "start": 0, //初始显示的图片序号，默认0
			    "data": [   //相册包含的图片，数组格式
			        {
			            "alt": "car1",
			            "pid": 666, //图片id
			            "src": "http://p3.so.qhimg.com/t014464a520def733e3.jpg", //原图地址
			            "thumb": "http://p3.so.qhimg.com/t014464a520def733e3.jpg" //缩略图地址
			        }
			    ]
			}
		}) ; */
		
		 $.getJSON('prototype/layer/photos.json', {}, function(json){
			 alert("hhh") ;
		    layer.photos({
		        photos: json
		    });
		});  
	}
	 
</script>
</head>
<body>
	<div class="one">
		<button class="btn btn-primary" type="button" onclick="alertMsg() ;">小小提示层</button>
		<button class="btn btn-primary" type="button" onclick="alertPage() ;">弹出一个页面层</button>
		<button class="btn btn-primary" type="button" onclick="alertIframe() ;">弹出一个iframe层</button>
		<button class="btn btn-primary" type="button" onclick="alertLoading() ;">弹出一个loading层</button>
		<button class="btn btn-primary" id="test5" type="button" onclick="alertTips() ;">弹出一个tips层</button>
	</div>
	<div class="two" style="margin-top:20px">
		<button class="btn btn-primary" type="button" onclick="alert1() ;">alert提示层</button>
		<button class="btn btn-primary" type="button" onclick="alertAsk() ;">询问按钮</button>
		<button class="btn btn-primary" type="button" onclick="alertPrompt() ;">prompt层</button>
		<button class="btn btn-primary" type="button" onclick="alertTab() ;">tab层</button>
		<button class="btn btn-primary" type="button" onclick="jsonPhoto() ;">使用json获取图片</button>
		
	</div>
	
	<div id="layer-photos-demo" class="layer-photos-dem" style="margin-top:40px">
	    <img height="150px" width="200px" layer-src="http://p3.so.qhimg.com/t014464a520def733e3.jpg" src="http://p3.so.qhimg.com/t014464a520def733e3.jpg" alt="图片名">
	    <img height="150px" width="200px" layer-src="http://p1.so.qhimg.com/t011174413f7e4e1596.jpg" src="http://p1.so.qhimg.com/t011174413f7e4e1596.jpg" alt="图片名">
	    <img height="150px" width="200px" layer-src="http://p0.so.qhimg.com/t0171223dfdec2f4d20.jpg" src="http://p0.so.qhimg.com/t0171223dfdec2f4d20.jpg" alt="图片名">
	    <img height="150px" width="200px" layer-src="http://p1.so.qhimg.com/t018371a0173fe6ad26.jpg" src="http://p1.so.qhimg.com/t018371a0173fe6ad26.jpg" alt="图片名">
	    <img height="150px" width="200px" layer-src="http://p0.so.qhimg.com/t014f41382164d4a2aa.jpg" src="http://p0.so.qhimg.com/t014f41382164d4a2aa.jpg" alt="图片名">
	</div>

</body>
</html>