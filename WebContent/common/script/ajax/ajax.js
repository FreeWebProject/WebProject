/**
 * ajax 相关方法
 */

/**
 * ajax 方法
 * */
function ajax_call( url, data, success, error, dataType ) {
	error = error || function() {
		alert( "ajax_call error!" ) ;
	}
	success = success || function() {
		
	}
	dataType = dataType || "text" ;
	$.ajax( {
		"url": url,
		"type": "post",
		"dataType": dataType,
		"data": { "ajaxData": data },
		"success": success,
		"error": error
	} ) ;
}

/**
 * 返回值为text的 ajax
 * */
function ajax_callText( url, data, success, error ) {
	error = error || function() {
		alert( "ajax_callText error!" ) ;
	}
	ajax_call( url, data, success, error, "text" ) ;
}

/**
 * 返回值为 json 的 ajax
 * */
function ajax_callJson( url, data, success, error ) {
	error = error || function() {
		alert( "ajax_callJson error!" ) ;
	}
	ajax_call( url, data, success, error, "json" ) ;
}