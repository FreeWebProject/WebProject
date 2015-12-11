package com.ssh.action.user;

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
	private List< String > hobby ;

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
		user.setId( ajaxData ) ;
		hibernateUtil.delete( user ) ;
	}
	
	// 删除多个
	@Action(
		value = "deleteMore",
		results = { @Result( type = "json" ) }
	)
	public void deleteMore() {
		String[] idArray = ajaxData.split( "," ) ;
		
		int result = hibernateUtil.delete( new User(), "id", idArray ) ;
		
		ResponseUtil.sendMsgToPage( result + "" ) ;
	}
	
	// 保存或更新 ajax
	@Action(
		value = "saveOrUpdateByAjax",
		results = { @Result( type = "json" ) }
	)
	public void saveOrUpdateByAjax() {
		User user = (User) JSONObject.toBean( JSONObject.fromObject( ajaxData ), User.class ) ;
		if( user.getId() != null && "".equals( user.getId() ) ) {
			user.setId( null ) ;
		}
		if( hobby != null && "".equals(hobby)){
			user.setHobby( hobby.toString().substring( 1, hobby.toString().length() - 1 ) );
		}
		user = (User) hibernateUtil.saveOrUpdate( user ) ;
		
		ResponseUtil.sendMsgToPage( JSONObject.fromObject( user ).toString() );
	}
	
	//验证用户名是否存在
	@SuppressWarnings("unchecked")
	@Action(
		value = "verifyUsername", 
		results = { @Result( type = "json" ) }
	)
	public void verifyUsername(){
		userList =  (List<User>)hibernateUtil.queryWithOneWhere(new User(), "name", ajaxData) ;
		String length = "" + userList.size() ;
		
		ResponseUtil.sendMsgToPage( length ) ;
	}
	
	//查看用户信息
	@Action(
		value = "view",
		results = { @Result( name = "success", location = "/prototype/bootstrap_table/user_view.jsp" ) }
		)
	public String view(){
		user = (User)hibernateUtil.queryWithOneWhere(new User() ,"id", user.getId() ).get( 0 ) ;
		
		return SUCCESS ;
		
	}
	
	//编辑用户信息
	@Action(
		value = "edit",
		results = { @Result( name = "success", location = "/prototype/bootstrap_table/user_edit.jsp")}
	)
	public String edit(){
		user = (User)hibernateUtil.queryWithOneWhere( new User(), "id", user.getId() ).get( 0 ) ;
		
		if( user.getHobby() != null ) {
			String[] strs = user.getHobby().split(",");
			hobby = new ArrayList<String>() ;
			for( String s : strs ) {
				hobby.add(s);
			}
		}
		
		return SUCCESS ;
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
	
	public List<String> getHobby() {
		return hobby;
	}

	public void setHobby(List<String> hobby) {
		this.hobby = hobby;
	}

}
