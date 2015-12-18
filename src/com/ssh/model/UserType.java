package com.ssh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table( name = "userType" )
public class UserType {
	private String id ;
	private String name ;
	private String value ;
	
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
	
	@Column( name = "name", length = 32)
	public String getName() {
		return name;
	}
	
	@Column( name = "value" ,length = 32)
	public String getValue() {
		return value;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public void setValue(String value) {
		this.value = value;
	}
	

}
