/**
 * bootstrap-table 所需要的一些方法<br>
 * 所有方法以bt_开头
 */

/**
 * 序号
 */
function bt_order(value, row, index) {
    return index;
}

/**
 * 删除一行
 */
function bt_removeOneRow( tableId, field, value ) {
	$( "#" + tableId + "" ).bootstrapTable( "remove", {
		"field": field,
		"values": [ value ]
	} ) ;
}

/**
 * 刷新
 * */
function bt_refresh( tableId ) {
	$( "#" + tableId ).bootstrapTable( "refresh" ) ;
}