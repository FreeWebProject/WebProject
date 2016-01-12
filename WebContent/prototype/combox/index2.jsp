<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp" %>
<title>layer start</title>
<link href="common/combox/css/style.min.css" rel="stylesheet">
<script type="text/javascript">
    
$(document).ready(function() {
	$( ".dictionary" ).each( function() {
	  
		var $this = $( this ) ;
		var dictionaryKey = $this.attr( "dictionaryKey" ) ;
		var hiddenName = $this.attr( "hiddenName" ) ;
		var url = "combox/list.action?dictionaryKey=" + dictionaryKey ;
		$(".dictionary").after('<div class="input-group-btn"><button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown"> &nbsp;<span class="caret"></span> </button><ul class="dropdown-menu dropdown-menu-right" role="menu"></ul></div>') ;
		
		$this.bsSuggest({
			url : url,
			effectiveFields : [ 'dictionary_name' ],
			idField : "dictionary_value",
			keyField : "dictionary_name"
		}).on("onSetSelectValue", function(b, a) {
			$( "[name = '" + hiddenName + "']" ).val( a.id ) ;
		});
	
	});

});
</script>
</head>
<body>
<div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <s:form namespace="/combox" action="formData" method="post">
                        	<s:hidden name="combox.dictionary_value" />
                            <hr>
                            <h3>URL 获取(查询数据库得到数据)</h3>
                            <p>配置了 data-id，非下拉菜单选择输入则背景色警告。</p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="input-group"> 
                                        <input type="text" class="dictionary form-control" dictionaryKey="role" hiddenName="combox.dictionary_value">
                                      
                                         <%-- <div class="input-group-btn">
                                            <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                                                &nbsp;<span class="caret"></span>
                                            </button>
                                             <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            </ul>
                                        </div>   --%>
                                        
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <button type="submit">提交</button>
                        </s:form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>