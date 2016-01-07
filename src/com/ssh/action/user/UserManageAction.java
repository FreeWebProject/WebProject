package com.ssh.action.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
	private SessionFactory sessionFactory ;
	private Session session ;



	@Action(
			value = "roleList",
			results = {@Result(type = "json")}
			)
	public void roleList(){
		ResponseUtil.sendMsgToPage( hibernateUtil.queryAllReturnJson( new UserType() ).toString() ) ; 
		
	/*	List< Map > children = new ArrayList<Map>() ;
		
		for( int i = 1; i < 3; i++ ) {
			Map<String, String> temp = new HashMap<String, String>() ;
			temp.put( "id", Integer.toString( i + 1 ) ) ;
			temp.put( "text", "Children node " + i ) ;
			
			children.add( temp ) ;
		}
		
		Map rootMap = new HashMap() ;
		
		rootMap.put( "id", "1" ) ;
		rootMap.put( "text", "Root node" ) ;
		rootMap.put( "children", children ) ;
		
		List rootList = new ArrayList() ;
		rootList.add( rootMap ) ;
		
		JSONArray jsonArray = JSONArray.fromObject( rootList ) ;
		
		ResponseUtil.sendMsgToPage( jsonArray.toString() ) ; */
	}
	
	@Action(
			value = "message",
			results = {@Result(type = "json")}
			)
	public void message(){
		
		JSONArray jsonArray = hibernateUtil.queryAllReturnJson( new UserType() ) ;
		for( int i=0;i<jsonArray.size();i++ ){
			JSONObject jsonObject = jsonArray.getJSONObject( i ) ;
			jsonObject.put( "text", jsonObject.get("name") ) ;
			jsonObject.remove( "name" ) ;
			jsonObject.remove( "state" ) ;
			
			
			JSONArray childrenArray = JSONArray.fromObject( hibernateUtil.queryWithOneWhere( new UserAnduserType(), "typeId", jsonObject.get("typeId").toString() ) );
			for( int j=0;j<childrenArray.size();j++ ){
				JSONObject childrenObject = childrenArray.getJSONObject( j ) ;
				childrenObject.put("text", childrenObject.get("username")) ;
				childrenObject.remove( "username" ) ;
				childrenObject.remove( "userId" ) ;
				childrenObject.remove("typeId") ;
			}
		
			List<?> children = jsonArray.toList( childrenArray ) ;
			
			jsonObject.remove("typeId") ;
			jsonObject.put("children", children) ;
		}
		
		System.out.println( jsonArray.toString() );
		
		ResponseUtil.sendMsgToPage( jsonArray.toString() ) ;
		
	}
	
	//用于测试combox搜索自动补全，通过action获取数据功能
	@Action(
			value = "testForCombox",
			results = {@Result(type = "json")}
			)
	public void testForCombox(){
		
		//制造数据
/*		JSONArray jsonArray = new JSONArray() ;
		for( int i=0; i<9; i++){
			
			JSONObject json = new JSONObject() ;
			json.put("id", i) ;
			json.put("name", "asura"+i) ;
			json.put("time", i + 20) ;
			
			jsonArray.add( i, json );
		}
		
		JSONObject result = new JSONObject() ;
		result.put("value", jsonArray) ;
		result.put("code", "200") ;
		result.put("redirect", "") ;
		result.put("message", "") ;*/
		
		
/*		从数据库读取数据,返回到前台页面的数据格式如下
 * 		{
			"message": "",
			"value": [
				 {
					"userName": "胡运燕",
					"shortAccount": "yunyan",
					"userId": 20007
				}, {
					"userName": "旷东林",
					"shortAccount": "kuangdonglin",
					"userId": 20010
				}, {
					"userName": "唐宏禹",
					"shortAccount": "tanghongyu",
					"userId": 20011
				}
			],
			"code": 200,
			"redirect": ""
		}
		*/
		
		JSONArray jsonArray = hibernateUtil.queryAllReturnJson( new UserType() ) ;
		JSONObject result = new JSONObject() ;
		result.put("value", jsonArray) ;
		result.put("code", "200") ;
		result.put("redirect", "") ;
		result.put("message", "") ;
		
		ResponseUtil.sendMsgToPage( result.toString() ) ;
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
			value = "deleteMore",
			results = { @Result( type = "json")}
			)
	public void deleteMore(){
		String[] idArray = ajaxData.split( "," ) ;
		int result = hibernateUtil.delete( new UserAnduserType(), "id", idArray ) ;
		ResponseUtil.sendMsgToPage( result + "" ) ;
	}
	
	

	//第一套方案:添加用户到某个角色中时，查询出来的都是不存在该角色列表中的用户，直接添加
	@Action(
			value = "manageUser",
			results = { @Result( type = "json") }
			)
		public void manageUser(){
		
		session = sessionFactory.getCurrentSession() ;
		StringBuffer sql = new StringBuffer() ;
		sql.append( " select " ) ;
		sql.append( " * from user u " ) ;
		sql.append( " where " ) ;
		sql.append( " u.name not in " ) ;
		sql.append( "(" ) ;
		sql.append( " select u.name from user u left join userAnduserType ut on u.name=ut.username where ut.typeId=" + typeId ) ;
		sql.append( ")" ) ;
		
		List<?> result = session.createSQLQuery( sql.toString() ).addEntity(User.class).list() ;
		
		JSONArray jsonArray = JSONArray.fromObject( result ) ;
		ResponseUtil.sendMsgToPage( jsonArray.toString() ) ;
	}
	
	//第一套方案
	@Action(
		value = "addUser",
		results = { @Result( type = "json")}
			)
	public void addUser(){
		JSONArray jsonArray = JSONArray.fromObject( ajaxData ) ;
		for(int i=0; i<jsonArray.size();i++){
			JSONObject jsonObj = jsonArray.getJSONObject(i) ;
			userAnduserType = new UserAnduserType() ;
			userAnduserType.setTypeId( typeId );
			userAnduserType.setUserId( jsonObj.get("id").toString() );
			userAnduserType.setUsername( jsonObj.get("name").toString() );
			hibernateUtil.saveOrUpdate(userAnduserType) ;
		}
	}
	
	
	//第二套方案:查询出来的是所有用户，根据需要进行添加，自动过滤已经存在的用户
	/*	@Action(
			value = "manageUser",
			results = { @Result( type = "json") }
			)
	public void manageUser(){
		
		ResponseUtil.sendMsgToPage(hibernateUtil.queryAllReturnJson( new User() ).toString() ) ;
	}
	
	
	 */
	
	//第二套方案
	/*@Action(
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
					userAnduserType = new UserAnduserType()  ;
					userAnduserType.setTypeId( typeId );
					userAnduserType.setUserId( jsonObj.get("id").toString() );
					userAnduserType.setUsername( jsonObj.get("name").toString() );
					hibernateUtil.saveOrUpdate(userAnduserType) ;
			}
				
			}
		}
		
		
		ResponseUtil.sendMsgToPage( jsonArray.size() + "");
		
	}
*/
	
	
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


	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {
		return session;
	}

	public void setSession(Session session) {
		this.session = session;
	}


}
