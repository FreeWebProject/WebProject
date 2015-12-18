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
		
		JSONArray jsonArray = JSONArray.fromObject( ajaxData ) ;
		if( jsonArray.size() > 0){
			List<?> list = hibernateUtil.queryWithOneWhere( new UserAnduserType(), "typeId", typeId ) ;
			if(list.size() >0){
				for(int j=0;j<list.size();j++){
					userAnduserType = (UserAnduserType) list.get(j) ;
					for(int i=0; i<jsonArray.size();i++){
							JSONObject jsonObj = jsonArray.getJSONObject(i) ;
							
							if( (userAnduserType.getUsername() == jsonObj.get("name").toString()) && (userAnduserType.getTypeId() == typeId) ){
								
							}else {
								userAnduserType = new UserAnduserType() ;
								userAnduserType.setTypeId( typeId );
								userAnduserType.setUserId( jsonObj.get("id").toString() );
								userAnduserType.setUsername( jsonObj.get("name").toString() );
								hibernateUtil.saveOrUpdate(userAnduserType) ;
							}
					}
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


}
