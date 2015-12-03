package com.ssh.action.bootstraptable;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.ssh.model.User;
import com.ssh.util.ActionUtil;
import com.ssh.util.ResponseUtil;

import net.sf.json.JSONArray;

@SuppressWarnings("serial")
@Component( value = "bootstrapTableAction" )
@Scope( value = "prototype" )
@Namespace( value = "/bootstrapTable" )
@ParentPackage( value = "json-default" )
public class BootstrapTableAction extends ActionUtil {
	
	private String order ;
	
	// json 测试
	@Action(
		value = "jsonText",
		results = { @Result( type = "json" ) }
	)
	public void jsonText() {
		List< User > userList = new ArrayList< User >() ;
		
		for( int i = 0; i < 10; i++ ) {
			User user = new User(); 
			
			user.setId( i + "" ) ;
			user.setName( "name-" + i ) ;
			user.setPassword( "password-" + i ) ;
			
			userList.add( user ) ;
		}
		
		JSONArray jsonObject = JSONArray.fromObject( userList ) ;
		
		ResponseUtil.sendMsgToPage( jsonObject.toString() ) ;
	}
	
	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}
	
}
