/**
 * artDialog 所需要的一些方法<br>
 * 所有方法以ad_开头
 */

/**
 * 确认删除的方法
 * */
function ad_confirmDelete( okFunction, content, cancelFunction ) {
	var content = content || AD_CONFIRMDELETE ;
	var cancelFunction = cancelFunction || true ;
	art.dialog( {
		"width": "280px",
		"height": "80px",
		"title": AD_CONFIRMDELETE_TITLE,
		"content": content,
		"ok": okFunction,
		"cancelVal": "取消",
		"cancel": cancelFunction,
		"lock": true,
		"fixed": true
	} ) ;
}

/**
 * 类似alert方法
 * */
function ad_alert( content, width, height ) {
	var width = (width || "280") + "px" ;
	var height = ( height || "80" ) + "px" ;
	art.dialog( {
		"width": width,
		"height": height,
		"content": content,
		"time": 2
	} ) ;
}

/**
 * 打开弹出窗
 * */
function ad_open( url, title, width, height ) {
	var title = title || AD_OPEN_TITLE ;
	
	art.dialog.open( url, { "title": title, "width": width + "px", "height": height + "px", "lock": true }, true ) ;
}

/**
 * 关闭弹出窗
 * */
function ad_close() {
	art.dialog.close() ;
}