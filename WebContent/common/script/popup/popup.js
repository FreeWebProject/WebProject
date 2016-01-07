/**
 * 弹出层的方法
 * **/
var popup = {
		
	v: '1.0',
	
	/**
	 * alert<br>
	 * 参数：content = 内容，area = 大小[ "400px", "380px" ]， time: 自动关闭所需毫秒 3000 4000 5500， shade = 遮罩 true/false, yes = 回调方法<br>
	 * 例子：<br>
	 * popup.alert( "添加成功！" ) ;<br>
	 * popup.alert( "添加成功！", [ "400px", "380px" ], 3000, true ) ;
	 * */
	alert: function( content, area, time, shade, yes ) {
		area = area || "auto" ;		// 大小默认自适应
		time = time || 0 ;			// 自动关闭所需毫秒
		shade = (shade == false ? 0 : shade ) || 0 ;		// 遮罩默认为关闭的
		
		// 显示遮罩则为 0.3 的遮罩层
		if( shade != 0 )  shade = 0.3 ;
		
		layer.alert( content, {
			area: area,
			time: time,
			shade: shade
		}, yes );
	}, // end of alert
	
	/**
	 * msg<br>
	 * 参数：content = 内容， time: 自动关闭所需毫秒 3000 4000 5500<br>
	 * 例子：<br>
	 * popup.msg( "msg内容" ) ;<br>;
	 * popup.msg( "亲，您点的太多了！", 1000 ) ;<br>;
	 * */
	msg: function( content, time ) {
		time = time || 3000 ;	// 默认3000毫秒关闭
		
		layer.msg( content, { time: time } ) ;
	},  // end of msg
	
	/**
	 * confirm<br>
	 * 参数：content: 内容, yes: 确定后的function， no: 取消后的function， btn: 按钮，默认为 确认 、 取消<br>
	 * 注意：yes, cancel 两个function并不会自动关闭confrim层,需要 popup.close( index ) ;<br>
	 * 例子：<br>
	 * popup.confirm( "确认要删除吗？", function( index ) {<br>
			popup.alert( "删除成功！" ) ;<br>
			
			popup.close( index ) ;<br>
		} ) ;<br>
	 * */
	confirm: function( content, yes, cancel, btn ) {
		btn = btn || ['&#x786E;&#x5B9A;','&#x53D6;&#x6D88;'] ;		// btn: 按钮默认： 确认 、 取消
		layer.confirm( content, { btn: btn }, yes, cancel ) ;
	},//end of confirm
	/**
	 * openDom
	 * 参数：dom: 元素, title: 标题，cancel: 关闭窗口后所执行的动作, shade:  遮罩 true/false
	 * 例子：<br>
	 * popup.openDom( $('#id'), "这是标题",function( index ) {
			popup.alert( "关闭" ) ;
			popup.close( index ) ;
		},false ) ;
	 * */
	openDom: function( dom, title, cancel, shade ) {
		shade = (shade == false ? 0 : shade ) || 0 ;   //遮罩默认关闭
		if( shade != 0 ) shade = 0.3 ;
		
		layer.open({
			type: 1,
			closeBtn: 0,
			area: '630px' || 'auto ',
			content: dom,
			title: title || false,
			cancel: cancel || function() { },
			shade: shade
		}) ;
	}, //end of openDom
	/**
	 * openHtml
	 * 参数：content: 内容, title: 标题，area: 窗口大小,例子['325px','215px'], shade:  遮罩 true/false,temp代表传入的一个参数 默认为false
	 * 例子：<br>
	 * popup.openHtml( "这是内容", "这是标题",['325px','215px'],false, temp ) ;
	 * */
	openHtml: function ( content, title, area, shade, temp ){
		shade = (shade == false ? 0 : shade ) || 0 ;   //遮罩默认关闭
		if( temp == null ){
			temp = '' ;
		} else {
			temp = '?temp=' + temp ;
			}
		if( shade != 0 ) shade = 0.3 ;
		 top.layer.open({
			type: 2,
			content: content + temp,
			title: title || '信息窗口',
			area: area || 'auto',
			maxmin: true,
			shade: shade 
	}) ;
	},  //end of openHtml
	/**
	 * tips
	 * 参数：content: 内容, dom: 元素，time: 存在时间
	 * position 可以有两种参数，第一种，string类型，'top','right','bottom','left'代表tip出现的位置
	 *  第二种数组类型,[1, '#3595CC'],左边数字代表tip出现的位置1上2右3下4左，右边代表背景颜色
	 * 例子：<br>
	 * popup.tips( "这是内容", $('#id'),'left',3000 ) ;
	 * */
	tips: function tips( content, dom, position, time ) {
		var type = typeof position === 'string' ;
		if( type == true ){
			if( position == 'top'){
				position = 1 ;
			} else if( position == 'right'){
					position = 2 ;
				} else if( position == 'bottom'){
						position = 3 ;
					} else{	
							position = 4 ;
						}
			
		}
		layer.tips(
				content,
				dom,
				{
					tips: position || 2,
					time: time || 3000
				}
		) ;
	},
	/**
	 * close：关闭特定层<br>
	 * 参数：index 特定层
	 * */
	close: function( index ) {
		layer.close( index ) ;
	}

} ;	// end of popup
	
// 内置为window成员
window.popup = popup ;
