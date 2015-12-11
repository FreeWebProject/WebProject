/**
 * datatimerpicker 所需要的一些方法<br>
 * */

$( document ).ready( function() {
	// 只有年-月-日的方法，实现类form_date即可
	$('.form_date').datetimepicker({
		language: "zh-CN",		// 中文
		format: "yyyy-mm-dd",	// 格式
        autoclose: true,		// 自动关闭
        todayBtn: true,			// “今天”按钮
        todayHighlight: true,	// 高亮显示今天
        startView: 2,			// 开始视图
		minView: 2
    });
		
	// 只有年-月的方法，实现类form_year即可
	$('.form_month').datetimepicker({
		language: "zh-CN",			// 中文
		format: "yyyy-mm",			// 格式
        autoclose: true,			// 自动关闭
        todayBtn: true,				// “今天”按钮
        todayHighlight: true,		// 高亮显示今天
        startView: 3,				// 开始视图
		minView: 3,					// 最小视图 。。。
        pickerPosition: "bottom-left"	// 位置
    });
	
	// 只有年的方法，实现类form_year即可
	$('.form_year').datetimepicker({
		language: "zh-CN",			// 中文
		format: "yyyy",				// 格式
        autoclose: true,			// 自动关闭
        todayBtn: true,				// “今天”按钮
        todayHighlight: true,		// 高亮显示今天
        startView: 4,				// 开始视图
		minView: 4,					// 最小视图 。。。
        pickerPosition: "bottom-left"	// 位置
    });
}) ;
