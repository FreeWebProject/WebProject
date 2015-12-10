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
 * 清理所有标签
 * */
function cleanAllParameter( name ) {
	$( "[ name ^= '" + name + ".' ]" ).val( "" ) ;
}

/**
 * 通过 name 获取字段名，并且组成 json
 * */
function getJson( name ) {
	var result = {} ;
	// var str = "" ;
	
	 /*$( "input[type='checkbox']" ).each(function(index, element ){
		 if($( this ).is(":checked")){
			 str += $( this ).val() + "," ;
			 result[ $( this ).attr( "name" ) ] = str ;
		 }
	 }) ;*/
	 
	$( "[ name ^= '" + name + ".' ]" ).each( function( index, element ) {
		if( $( this ).attr("type") == "radio" && $( this ).prop( "checked" ) == false ){
			// 不处理没有被选中的radio
		} else if( $( this ).attr( "type" ) == "checkbox" && $( this ).prop( "checked" ) == false ) {
			
		} else {
			if( result[ $( this ).attr( "name" ).substring( name.length + 1 ) ] == undefined ) {
				result[ $( this ).attr( "name" ).substring( name.length + 1 ) ] = $( this ).val() ;
			} else {
				result[ $( this ).attr( "name" ).substring( name.length + 1 ) ] += "," + $( this ).val() ;
			}
		}
		
	} ) ;

	
	/*	$( "[ name ^= '" + name + ".' ]" ).each( function( index, element ) {
			result[ $( this ).attr( "name" ).substring( name.length + 1 ) ] = $( this ).val() ;
	} ) ;*/
	
	
	return JSON.stringify( result ) ;
}