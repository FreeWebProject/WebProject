package com.ssh.action.user;

import java.util.Iterator;
import java.util.List;

import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.ssh.model.UserType;
import com.ssh.util.ActionUtil;
import com.ssh.util.ResponseUtil;

@SuppressWarnings("serial")
@Scope( value = "prototype")
@Component( value = "UserTypeAction")
@Namespace( value = "/userType")
@ParentPackage( value = "json-default")
public class UserTypeAction extends ActionUtil{
	
	private UserType userType ;
	
	@Action(
			value = "saveOrUpdate",
			results = { @Result( type = "json" ) }
			)
	public void saveOrUpdate(){ 
		userType =  (UserType) JSONObject.toBean( JSONObject.fromObject( ajaxData ), UserType.class ) ;
		userType.setState( "0" ) ;
		
		getTypeId() ;
		hibernateUtil.saveOrUpdate( userType ) ;
	}
	
	@Action(
			value = "update",
			results = { @Result( type = "json" ) }
			)
	public void update(){ 
		userType =  (UserType) JSONObject.toBean( JSONObject.fromObject( ajaxData ), UserType.class ) ;
		
		hibernateUtil.saveOrUpdate( userType ) ;
	}
	
	@Action(
			value = "delete",
			results = { @Result( type = "json" ) }
			)
	public void delete(){
		UserType userType = new UserType() ;
		userType.setId( ajaxData );
		
		hibernateUtil.delete( userType );
	}
	
	@Action(
			value = "deleteMore",
			results = { @Result( type = "json" ) }
			)
	public void deleteMore(){
		String [] idArray = ajaxData.split(",") ;
		int result = hibernateUtil.delete( new UserType(), "id", idArray ) ;
		ResponseUtil.sendMsgToPage( result + "" );
	}

	@Action(
			value = "jumpToRoleEdit",
			results = { @Result( name = "success", location = "/prototype/bootstrap_table/role_edit.jsp" ) }
			)
	public String jumpToRoleEdit(){
		
		userType =  (UserType) hibernateUtil.queryWithOneWhere( new UserType(), "typeId", userType.getTypeId() ).get(0) ;
		
		return SUCCESS ;
	}
	
	public void getTypeId(){
		 int max = 0 ;
		 List<UserType> list = (List<UserType>) hibernateUtil.queryAll( new UserType() ) ;
		 if( list.size() < 0){
			 userType.setTypeId("1");
		 }else{
			 Iterator<UserType> it = list.iterator() ;
			 while( it.hasNext() ){
				 UserType u = it.next() ;
				 int temp = Integer.parseInt( u.getTypeId() ) ;
				 if( temp > max ){
					 max = temp ;
				 }
			 }
			userType.setTypeId( max + 1 + "" );
		 }
	}

	public UserType getUserType() {
		return userType;
	}


	public void setUserType(UserType userType) {
		this.userType = userType;
	}

}
