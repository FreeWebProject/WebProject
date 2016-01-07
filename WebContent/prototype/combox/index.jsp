<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>layer start</title>
<link href="common/combox/css/style.min.css" rel="stylesheet">

<script type="text/javascript">

	function testCodeSet( dom ) {
		
	    obtainData( dom, "userManager/testForCombox.action","name") ;
	}

    
$(document).ready(function() {

var testdataBsSuggest=$("#test_data").bsSuggest({indexId:2,indexKey:1,data:{"value":[{"id":"0","word":"lzw","description":"http://lzw.me"},{"id":"1","word":"lzwme","description":"http://w.lzw.me"},{"id":"2","word":"meizu","description":"http://www.meizu.com"},{"id":"3","word":"flyme","description":"http://flyme.meizu.com"}],"defaults":"http://lzw.me"}});
var baiduBsSuggest=$("#baidu").bsSuggest({allowNoKeyword:false,multiWord:true,separator:",",getDataMethod:"url",url:"http://unionsug.baidu.com/su?p=3&t="+(new Date()).getTime()+"&wd=",jsonp:"cb",processData:function(c){var b,a,d={value:[]};
if(!c||!c.s||c.s.length===0){
	  return false ;
	  }
	console.log(c);
	a=c.s.length;
	jsonStr="{'value':[";for(b=0;b<a;b++){d.value.push({word:c.s[b]}) ;}d.defaults="baidu";return d ;}});
	
}) ;


     /*  var testBsSuggest=$("#test").bsSuggest({url:"prototype/combox/js/data.json",idField:"userId",keyField:"userName"}).on("onDataRequestSuccess",function(b,a){console.log("onDataRequestSuccess: ",a);}).on("onSetSelectValue",function(b,a){console.log("onSetSelectValue: ",a) ;}).on("onUnsetSelectValue",function(a){console.log("onUnsetSelectValue") ;}); */
     
    /*   var testBsSuggest=$("#testNoBtn").bsSuggest({url:"prototype/combox/js/data.json",showBtn:false,idField:"userId",keyField:"userName"}).on("onDataRequestSuccess",function(b,a){console.log("onDataRequestSuccess: ",a)}).on("onSetSelectValue",function(b,a){console.log("onSetSelectValue: ",a)}).on("onUnsetSelectValue",function(a){console.log("onUnsetSelectValue")});
      var testdataBsSuggest=$("#test_data").bsSuggest({indexId:2,indexKey:1,data:{"value":[{"id":"0","word":"lzw","description":"http://lzw.me"},{"id":"1","word":"lzwme","description":"http://w.lzw.me"},{"id":"2","word":"meizu","description":"http://www.meizu.com"},{"id":"3","word":"flyme","description":"http://flyme.meizu.com"}],"defaults":"http://lzw.me"}});
      var baiduBsSuggest=$("#baidu").bsSuggest({allowNoKeyword:false,multiWord:true,separator:",",getDataMethod:"url",url:"http://unionsug.baidu.com/su?p=3&t="+(new Date()).getTime()+"&wd=",jsonp:"cb",processData:function(c){var b,a,d={value:[]};
      if(!c||!c.s||c.s.length===0){
    	  return false ;
    	  }
      	console.log(c);
      	a=c.s.length;
      	jsonStr="{'value':[";for(b=0;b<a;b++){d.value.push({word:c.s[b]})}d.defaults="baidu";return d}});
       var taobaoBsSuggest=$("#taobao").bsSuggest({indexId:2,indexKey:1,allowNoKeyword:false,multiWord:true,separator:",",getDataMethod:"url",effectiveFieldsAlias:{Id:"序号",Keyword:"关键字",Count:"数量"},showHeader:true,url:"http://suggest.taobao.com/sug?code=utf-8&extras=1&q=",jsonp:"callback",processData:function(c){var b,a,d={value:[]};
       	  if(!c||!c.result||c.result.length==0){
       		  return false ;
       		 }
       	  console.log(c);
       	  a=c.result.length;
       	  for(b=0;b<a;b++){
       		  d.value.push({"Id":(b+1),"Keyword":c.result[b][0],"Count":c.result[b][1]}) ;
       		  } 
       	  console.log(d);
       	  return d ;
       	  }});
       $("form").submit(function(a){return false ;});
       }) */
</script>
</head>
<body>
<div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <form action="index_submit" method="get" accept-charset="utf-8" role="form">
                            <hr>
                            <h3>测试(URL 获取)</h3>
                            <p>配置了 data-id，非下拉菜单选择输入则背景色警告。</p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="input-group" onfocus="testCodeSet( $( this ) ) ;">
                                        <input type="text" class="form-control" id="test"> <!-- codeSetKey="juese" -->
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            </ul>
                                        </div>
                                        <!-- /btn-group -->
                                    </div>
                                </div>
                            </div>
                            <hr>
                           <%--  <h3>测试(URL 获取)</h3>
                            <p>不展示下拉菜单按钮。</p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="testNoBtn">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            </ul>
                                        </div>
                                        <!-- /btn-group -->
                                    </div>
                                </div>
                            </div>
                            <hr> --%>
                            <h3>测试(json 数据中获取)</h3>
                            <p>默认启用空关键字检索。</p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="test_data">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            </ul>
                                        </div>
                                        <!-- /btn-group -->
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <h3>百度搜索</h3>
                            <p>支持逗号分隔多关键字</p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="input-group" style="width: 300px;">
                                        <input type="text" class="form-control" id="baidu">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            </ul>
                                        </div>
                                        <!-- /btn-group -->
                                    </div>
                                </div>
                            </div>
                            <hr>
                           <%--  <h3>淘宝搜索</h3>
                            <p>支持逗号分隔多关键字</p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="input-group" style="width: 400px;">
                                        <input type="text" class="form-control" id="taobao">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            </ul>
                                        </div>
                                        <!-- /btn-group -->
                                    </div>
                                </div>
                            </div> --%>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>