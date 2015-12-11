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
 * 删除行
 * */
function bt_removeRow( tableId, field, value ) {
	$( "#" + tableId + "" ).bootstrapTable( "remove", {
		"field": field,
		"values": value
	} ) ;
}

/**
 * 刷新
 * */
function bt_refresh( tableId ) {
	$( "#" + tableId ).bootstrapTable( "refresh" ) ;
}

/**
 * 获取选中行<br>
 * 返回值为选中行的json数据
 * */
function bt_getSelections( tableId ) {
	return $( "#" + tableId ).bootstrapTable( "getSelections" ) ;
}