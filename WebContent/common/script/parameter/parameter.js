/**
 * parameter 相关方法
 */

// 通过 name 获取标签
function getTag( name ) {
	return $( "[ name = '" + name + "' ]" ) ;
}

/**
 * 通过 name 获取字段名
 * */
function getParameter( name ) {
	return getTag( name ).val() ;
}

/**
 * 通过 name 赋值
 * */
function setParameter( name, value ) {
	getTag( name ).val( value ) ;
}

/**
 * 通过 name 获取字段名，并且组成 json
 * */
function getJson( name ) {
	var result = {} ;
	
	$( "[ name ^= '" + name + ".' ]" ).each( function( index, element ) {
		result[ $( this ).attr( "name" ).substring( name.length + 1 ) ] = $( this ).val() ;
	} ) ;
	
	return JSON.stringify( result ) ;
}