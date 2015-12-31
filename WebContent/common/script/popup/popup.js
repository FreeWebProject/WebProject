/**
 * 弹出层公共方法
 * **/

//一些基础配置
function __config() {
	layer.config({
	    extend: 'extend/layer.ext.js'
	});
	
	layer.ready(function(){ //为了layer.ext.js加载完毕再执行
	    layer.photos({
	        photos: '#layer-photos-demo'
	    });
	});  
}
function Popup( title, content ) {
	this.title = title || "弹出窗口" ;
	this.content = content || "弹出内容" ;
}

//弹出提示层
function __alert( content ) {
	content = this.content || content || "没有内容" ;
	layer.msg( content ) ;
}

//弹出页面层
function __open( content ) {
	top.layer.open( {
		type: 1,
		area: [ "600px", "360px" ],
		shadeClose: true, 	// 点击遮罩关闭
		content : this.content || content || "" 
	} ) ;
	
}

//弹出iframe框
function __openIframe( content ) {
	top.layer.open( {
		type: 2,
		title: "iframe父子操作",
		maxmin: true,
		shadeClose: false,
		area: [ "800px", "520px" ],
		content: this.content || content || "" 
	} ) ;
}

//弹出loading 层
function __loading() {
	var li = layer.load() ;
	// 此处使用setTimeout演示ajax回调
	setTimeout( function() {
		layer.close( li ) ;
	}, 1000 ) ;
}

//弹出confirm层
function __confirm() {
	layer.confirm('您确定这是一个询问按钮吗？',{
		btn: ['是的','不是的']
	},function() {
		layer.msg('您选择: 是的',{icon: 1}) ;
	},function() { 
		layer.msg('您选择: 不是的', {
			time: 5000,     //自动关闭时间 5s
		}) ;
	}
	) ;
}

//prompt层
function __prompt() {
	layer.prompt({
		title: '输入任何口令，并确认',
		formType: 2
	}, function(pass){
		layer.prompt({
			title: '请填写内容，并确认',
			formType: 2
		}, function(text) {
			layer.msg('演示完毕！您的口令:' + pass + '内容' + text) ;
		}) ;
	}) ; 
}

//tab层
function __tab() {
	layer.tab({
		area: ['600px', '300px'],
		tab: [{
			title: 'tab1',
			content: 'this is tab1'
		}, {
			title: 'tab2',
			content: 'this is tab2'
		}, {
			title: 'tab3',
			content: 'this is tab3'
		}]
	}) ;
}

Popup.prototype.__alert = __alert ;
Popup.prototype.__open = __open ;
Popup.prototype.__openIframe = __openIframe ;
