package com.ssh.action.user;

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

import net.sf.json.JSONObject;

/*
 * @Component --- spring注解，将这个类交给spring来管理  value 为他的名字
 * @Scope --- spring注解，指定Component的scope  action一定要指定为 "prototype"
 * @NameSpace --- struts2注解,action的命名空间
 * */
@Component( value = "userAction" )
@Scope( value = "prototype" )
@Namespace( value = "/user" )
@ParentPackage( value = "json-default" )
@SuppressWarnings("serial")
public class UserAction extends ActionUtil {

	private User user ;
	private List< User > userList ;
	
	/*
	 * @Action --- struts2注解,在方法上加@Action注解,表明这是一个action,并用@Result表明返回结果
	 * */
	// 保存
	@Action(
		value = "regist",
		results = { @Result( name = "success", location = "/index.jsp" ), @Result( name = "error", location = "/error.jsp" ) }
	)
	public String saveOrUpdate() {
		hibernateUtil.saveOrUpdate( user ) ;
		
		return SUCCESS ;
	}
	
	// 查询所有
	@SuppressWarnings("unchecked")
	@Action(
		value = "queryAll",
		results = { @Result( name = "success", location = "/prototype/user/user_list.jsp" ) }
	)
	public String queryAll() {
		userList = (List<User>) hibernateUtil.queryAll( new User() ) ;
		
		return SUCCESS ;
	}
	
	// 查询所有，返回 json
	@Action(
		value = "queryAllResultJson",
		results = { @Result( type = "json" ) }
	)
	public void queryAllReturnJson() {
		ResponseUtil.sendMsgToPage( hibernateUtil.queryAllReturnJson( new User() ).toString() ) ;
	}
	
	// 删除
	@Action(
		value = "delete",
		results = { @Result( type = "json" ) }
	)
	public void delete() {
		User user = new User() ;
		user.setId( textData ) ;
		hibernateUtil.delete( user ) ;
	}
	
	// 保存或更新 ajax
	@Action(
		value = "saveOrUpdateByAjax",
		results = { @Result( type = "json" ) }
	)
	public void saveOrUpdateByAjax() {
		User user = (User) JSONObject.toBean( JSONObject.fromObject( jsonData ), User.class ) ;
		if( user.getId() != null && "".equals( user.getId() ) ) {
			user.setId( null ) ;
		}
		user = (User) hibernateUtil.saveOrUpdate( user ) ;
		
		ResponseUtil.sendMsgToPage( JSONObject.fromObject( user ).toString() );
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

}
