<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 将下面的 <meta> 标签加入到页面中，可以让部分国产浏览器默认采用高速模式渲染页面 -->
<meta name="renderer" content="webkit">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-type" content="0" />

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="common/bootstrap/css/bootstrap.css">

<!-- bootstrap-table 核心 CSS 文件 -->
<link rel="stylesheet" href="common/bootstrap_table/bootstrap-table.css">

<!-- datetimepicker --> 
<link rel="stylesheet" type="text/css" href="common/datetimerpicker/css/bootstrap-datetimepicker.css">

<!-- argDialog -->
<link rel="stylesheet" type="text/css" href="common/artDialog/skins/twitter.css" />

<!-- formValidator CSS文件 -->
<link rel="stylesheet" href="common/formValidator/css/validationEngine.jquery.css">

<!-- 更改bootstrap样式 -->
<link rel="stylesheet" href="common/style/bootstrap/modification.css">

<!-- formValidator template CSS文件 -->
<link rel="stylesheet" href="common/formValidator/css/template.css">

<!-- 常规常量constants.css -->
<link rel="stylesheet" href="common/style/constants.css">

<!-- uploadify上传 -->
<link rel="stylesheet" type="text/css" href="common/uploadify/uploadify.css">

<!-- combox 搜索自动补全  -->
<link href="common/combox/css/font-awesome.min.css" rel="stylesheet">
<link href="common/combox/css/animate.min.css" rel="stylesheet">


<!-- js 常量 -->
<script src="common/script/constants.js"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="common/script/jquery/jquery-2.1.4.js"></script>

<!-- json2.js 用户处理json -->
<script src="common/json/json2.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="common/bootstrap/js/bootstrap.js"></script>

<!-- bootstrap-table 核心 javeScript 文件 -->
<script src="common/bootstrap_table/bootstrap-table.js"></script>
<!-- put your locale files after bootstrap-table.js -->
<script src="common/bootstrap_table/locale/bootstrap-table-zh-CN.js"></script>
<script src="common/bootstrap_table/extensions/export/bootstrap-table-export.js"></script>
<script src="common/tableExport/tableExport.js"></script>

<!-- datetimepicker -->
<script type="text/javascript" src="common/datetimerpicker/js/bootstrap-datetimepicker.js" ></script>
<script type="text/javascript" src="common/datetimerpicker/js/locales/bootstrap-datetimepicker.zh-CN.js" ></script>

<!-- combox 搜索自动补全 -->
<script src="common/combox/js/content.min.js"></script>
<script src="common/combox/js/bootstrap-suggest.min.js"></script>

<!-- datatimepicker 的自定义的方法 -->
<script src="common/script/datatimerpicker/datatimerpicker.js"></script>

<!-- layer -->
<script src="common/layer/layer.js"></script>

<!-- 弹出层js -->
<script src="common/script/popup/popup.js"></script>

<!-- argDialog -->
<script src="common/artDialog/artDialog.source.js"></script>
<script src="common/artDialog/plugins/iframeTools.source.js"></script>

<!-- formValidator 核心javaScript 文件 -->
<script src="common/formValidator/js/jquery.validationEngine.js"></script>

<!-- 用于bootstrap-table的一些方法 -->
<script src="common/script/bootstrap_table/bootstrap-table.js"></script>

<!-- 用于ajax的方法 -->
<script src="common/script/ajax/ajax.js"></script>

<!-- 用于artDialog的方法 -->
<script src="common/script/artDialog/artDialog.js"></script>

<!-- 用于 parameter 的方法 -->
<script src="common/script/parameter/parameter.js"></script>

<!-- uploadify上传 -->
<script src="common/uploadify/jquery.uploadify.js"></script>

<!-- combox 自定义方法 -->
<script src="common/script/combox/combox.js"></script>
