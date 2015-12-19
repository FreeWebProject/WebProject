package com.ssh.action.user;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.ssh.model.User;
import com.ssh.model.UserAnduserType;
import com.ssh.model.UserType;
import com.ssh.util.ResponseUtil;
import com.ssh.util.ActionUtil;

/*
 * @Component --- spring注解，将这个类交给spring来管理  value 为他的名字
 * @Scope --- spring注解，指定Component的scope  action一定要指定为 "prototype"
 * @NameSpace --- struts2注解,action的命名空间
 * */

@SuppressWarnings("serial")
@Namespace( value = "/userManager")
@Component( value = "UserManagerAction")
@Scope( value = "prototype")
@ParentPackage( value = "json-default")

public class UserManageAction extends ActionUtil {
	
	private UserAnduserType userAnduserType ;
	static String typeId ;
	static int count ;
	


	@Action(
			value = "roleList",
			results = {@Result(type = "json")}
			)
	public void roleList(){
		ResponseUtil.sendMsgToPage( hibernateUtil.queryAllReturnJson( new UserType() ).toString() ) ;  
	}
	
	@Action(
			value = "jumpToUserList",
			results = { @Result( name = "success", location = "/prototype/bootstrap_table/user_userList.jsp" ) }
			)
	public String jumpToUserList() {
			
			return SUCCESS ;
	}
	
	@Action(
			value = "userList",
			results = { @Result( type = "json" ) }
			)
	public void userList() {
		typeId = userAnduserType.getTypeId() ;
		
		JSONArray json = JSONArray.fromObject( hibernateUtil.queryWithOneWhere(new UserAnduserType(), "typeId", userAnduserType.getTypeId() ) ) ;
		ResponseUtil.sendMsgToPage( json.toString() ); 
		
	}
	
	@Action(
			value = "delete",
			results = { @Result( type = "json")}
			)
	public void delete(){
		UserAnduserType userAnduserType = new UserAnduserType() ;
		userAnduserType.setId( ajaxData );
		hibernateUtil.delete( userAnduserType );
	}
	
	
	@Action(
			value = "manageUser",
			results = { @Result( type = "json") }
			)
	public void manageUser(){
		
		ResponseUtil.sendMsgToPage(hibernateUtil.queryAllReturnJson( new User() ).toString() ) ;
	}
	
	@Action(
			value = "addUser",
			results = { @Result( type = "json")}
			)
	public void addUser(){
		//需要添加的用户列表
		JSONArray jsonArray = JSONArray.fromObject( ajaxData ) ;
		if( jsonArray.size() > 0){
			//添加前，先查询userAnduserType表中是否存在该角色的用户，静态变量typeId代表角色编号，进入某个角色用户列表时已经设定
			List<?> list = hibernateUtil.queryWithOneWhere( new UserAnduserType(), "typeId", typeId ) ;
			//双重循环，外层是循环需要添加的用户，内层是已经存在userAnduserType表中的用户，外层逐一核对内层，查询是否存在
			for(int i=0; i<jsonArray.size();i++){
				JSONObject jsonObj = jsonArray.getJSONObject(i) ;
				//判断userAnduserType表是否为空，为空则直接添加，不为空则进行查询
				if(list.size() >0){
					for(int j=0;j<list.size();j++){
						userAnduserType = (UserAnduserType) list.get(j) ;
						//如果userAnduserType表中存在需要添加的用户，则标志count为1，不存在则不标识
						if( userAnduserType.getUsername().toString().equals(jsonObj.get("name")) ){
							 count = 1 ;
						}
					}
						//userAnduserType表中不存在的，在这里添加
						if(count != 1){
							userAnduserType = new UserAnduserType() ;
							userAnduserType.setTypeId( typeId );
							userAnduserType.setUserId( jsonObj.get("id").toString() );
							userAnduserType.setUsername( jsonObj.get("name").toString() );
							hibernateUtil.saveOrUpdate(userAnduserType) ;
						}
				}else {
				userAnduserType = new UserAnduserType() ;
				userAnduserType.setTypeId( typeId );
				userAnduserType.setUserId( jsonObj.get("id").toString() );
				userAnduserType.setUsername( jsonObj.get("name").toString() );
				hibernateUtil.saveOrUpdate(userAnduserType) ;
			}
				
			}
		}
		
		
		ResponseUtil.sendMsgToPage( jsonArray.size() + "");
		
	}

	public UserAnduserType getUserAnduserType() {
		return userAnduserType;
	}

	public void setUserAnduserType(UserAnduserType userAnduserType) {
		this.userAnduserType = userAnduserType;
	}

	public static String getTypeId() {
		return typeId;
	}

	public static void setTypeId(String typeId) {
		UserManageAction.typeId = typeId;
	}
	

	public static int getCount() {
		return count;
	}

	public static void setCount(int count) {
		UserManageAction.count = count;
	}




}
