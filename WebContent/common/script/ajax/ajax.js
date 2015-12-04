/**
 * ajax 相关方法
 */

/**
 * 返回值为text的 ajax
 * */
function ajax_callText( url, data, success, error ) {
	error = error || function() {
		alert( "ajax_callText error!" ) ;
	}
	success = success || function() {
		
	}
	$.ajax( {
		"url": url,
		"type": "post",
		"dataType": "text",
		"data": { "textData": data },
		"success": success,
		"error": error
	} ) ;
}