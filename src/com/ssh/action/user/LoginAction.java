package com.ssh.action.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.ssh.model.User;
import com.ssh.util.ActionUtil;
import com.ssh.util.SessionUtil;

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
		if( userList.size() > 0 ) {
			// 用户名存在，再验证密码
			User userInfo = userList.get( 0 ) ;
			if( user.getPassword().equals( userInfo.getPassword() ) ) {
				// 密码正确
				System.out.println( "密码正确" ) ;
			} else {
				// 密码错误
				System.out.println( "密码错误！" ) ;
			}
		} else {
			// 用户名不存在
			System.out.println( "用户名不存在！" ) ;
		}
		
		HttpSession session = SessionUtil.obtainSession() ;
		
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
