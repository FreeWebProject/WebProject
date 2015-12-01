package com.ssh.action.user;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.UserDao;
import com.ssh.model.User;

/*
 * @Component --- spring注解，将这个类交给spring来管理  value 为他的名字
 * @Scope --- spring注解，指定Component的scope  action一定要指定为 "prototype"
 * @NameSpace --- struts2注解,action的命名空间
 * */
@Component( value = "userAction" )
@Scope( value = "prototype" )
@Namespace( value = "/user" )
@SuppressWarnings("serial")
public class UserAction extends ActionSupport {

	private UserDao userDao ;
	private User user ;
	
	/*
	 * @Action --- struts2注解,在方法上加@Action注解,表明这是一个action,并用@Result表明返回结果
	 * */
	// 保存
	@Action(
		value = "regist",
		results = { @Result( name = "success", location = "/index.jsp" ), @Result( name = "error", location = "/error.jsp" ) }
	)
	public String saveOrUpdate() {
		userDao.saveOrUpdate( user ) ;
		
		return SUCCESS ;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
}