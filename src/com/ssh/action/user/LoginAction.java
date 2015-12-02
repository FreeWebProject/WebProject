package com.ssh.action.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.ssh.model.User;
import com.ssh.util.ActionUtil;

@Component( value = "loginAction" )
@Scope( value = "prototype" )
@Namespace( value = "/user" )
@SuppressWarnings("serial")
public class LoginAction extends ActionUtil {
	
	private User user ;

	// 登陆
	@Action(
		value = "login",
		results = { @Result( name = "success", location = "/prototype/main.jsp" ) }
	)
	public String login() {
		// 验证用户名是否存在
		@SuppressWarnings("unchecked")
		List< User > userList = ( List< User > ) hibernateUtil.queryWithOneWhere( user, "name", user.getName() ) ;
		System.out.println( userList.size() );
		
		HttpServletRequest request = ServletActionContext.getRequest() ;
		HttpSession session = request.getSession() ;
		
		// 将用户信息放入session
		session.setAttribute( "user", user ) ;
		
		return SUCCESS ;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
