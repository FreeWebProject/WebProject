package com.ssh.action.bootstraptable;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.ssh.model.User;
import com.ssh.util.ActionUtil;

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
	public void jsonText() throws IOException {
		List< User > userList = new ArrayList< User >() ;
		
		for( int i = 0; i < 10; i++ ) {
			User user = new User(); 
			
			user.setId( i + "" ) ;
			user.setName( "name-" + i ) ;
			user.setPassword( "password-" + i ) ;
			
			userList.add( user ) ;
		}
		
		JSONArray jsonObject = JSONArray.fromObject( userList ) ;
		
		System.out.println( jsonObject.toString() );
		
		sendMsg( jsonObject.toString() ) ;
	}
	
	private void sendMsg(String context) throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse() ;
		response.setCharacterEncoding("UTF-8") ;
		response.getWriter().write(context) ;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}
	
}
