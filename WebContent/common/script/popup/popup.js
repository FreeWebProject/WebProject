/**
 * 弹出层公共方法
 * **/

function Popup(  ) {
	this.title = "弹出窗口" ;
	this.content = "弹出内容" ;
}

function __alert() {
	layer.msg( this.content ) ;
}

Popup.property.__alert() ;