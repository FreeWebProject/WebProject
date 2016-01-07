/*
 * *  combox 相关方法
*/

/*
 *  说明:dom代表元素节点，url代表要获取元素的地址,key代表要显示的内容
 *  举例: obtainData("#test", "userManager/testForCombox.action","name") ;
 */
	function obtainData(dom,url,key) {
		var suggest = dom.bsSuggest({
				url:url,
				idField:"id",
				keyField:key,
				allowNoKeyword: true,
				multiWord: true
				}).on("onDataRequestSuccess",function(event, result){
						alert('请求成功') ;
						console.log("onDataRequestSuccess: ",result);
					}) ;
	}

