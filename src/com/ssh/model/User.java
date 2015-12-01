package com.ssh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/*
 * @Entity --- hibernate注解，表名这是一个实体类
 * @Table --- 对应数据库的名字
 * */
@Entity
@Table( name = "user" )
public class User {

	private String id ;
	private String name ;
	private String password ;
	
	/*
	 * @Id --- hibernate注解，表名这个一个主键ID
	 * @GenericGenerator --- hibernate注解，主键生成策略，这里用的uuid
	 * @Columen --- hibernate注解，表名这是数据库对应的一个字段，并有相关属性
	 * */
	@Id
	@GenericGenerator( name = "generator", strategy = "uuid" )
	@GeneratedValue( generator = "generator" )
	@Column( name = "id", unique = true, nullable = false, length = 64 )
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	@Column( name = "name", length = 128 )
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Column( name = "password", length = 128 )
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
}
