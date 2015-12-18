package com.ssh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 *  @Entity   hibernate注解，代表该文件为实体类
 *  @table    对应的数据库中表的名字
 *
 */

@Entity
@Table( name = "userAnduserType" )
public class UserAnduserType {
	private String id ;
	private String userId ;   //用户id
	private String typeId ;	  //类型id
	private String username ;	  //用户名
	
	
	/**
	 *  @GenericGenerator  --  hibernate注解，主键生成策略，这里使用uuid
	 *  @return
	 */
	@Id
	@GenericGenerator( name = "generator" , strategy = "uuid")
	@GeneratedValue( generator = "generator" )
	@Column( name = "id" , unique = true, nullable = false, length = 32 )
	public String getId() {
		return id;
	}
	
	@Column( name = "userId", length = 32)
	public String getUserId() {
		return userId;
	}
	
	@Column( name = "typeId", length = 32)
	public String getTypeId() {
		return typeId;
	}
	
	@Column( name = "username", length = 32)
	public String getUsername() {
		return username;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}


	public void setUsername(String username) {
		this.username = username;
	}
	
	

}
