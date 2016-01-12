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
@Table( name = "dictionary" )
public class Combox {
	private String id ;
	private String dictionary_key ;
	private String dictionary_value ;
	private String dictionary_name ;
	private String order_number ;
	private String isStick ;
	private String addTime ;
	private String updateTime ;
	private String state ;
	private String description ;
	
	/*
	 * @Id --- hibernate注解，表名这个一个主键ID
	 * @GenericGenerator --- hibernate注解，主键生成策略，这里用的uuid
	 * @Column --- hibernate注解，表名这是数据库对应的一个字段，并有相关属性
	 * */
	@Id
	@GenericGenerator( name = "generator", strategy = "uuid" )
	@GeneratedValue( generator = "generator" )
	@Column( name = "id", unique = true, nullable = false, length = 64 )
	public String getId() {
		return id;
	}
	
	@Column( name = "dictionary_key", length = 128 )
	public String getDictionary_key() {
		return dictionary_key;
	}
	
	@Column( name = "dictionary_value", length = 128 )
	public String getDictionary_value() {
		return dictionary_value;
	}

	@Column( name = "dictionary_name", length = 128 )
	public String getDictionary_name() {
		return dictionary_name;
	}

	@Column( name = "order_number", length = 128 )
	public String getOrder_number() {
		return order_number;
	}
	
	@Column( name = "isStick", length = 128 )
	public String getIsStick() {
		return isStick;
	}
	
	@Column( name = "state", length = 128 )
	public String getState() {
		return state;
	}
	
	@Column( name = "description", length = 128 )
	public String getDescription() {
		return description;
	}
	
	
	public void setId(String id) {
		this.id = id;
	}
	public void setDictionary_key(String dictionary_key) {
		this.dictionary_key = dictionary_key;
	}
	public void setDictionary_value(String dictionary_value) {
		this.dictionary_value = dictionary_value;
	}
	public void setDictionary_name(String dictionary_name) {
		this.dictionary_name = dictionary_name;
	}

	public void setOrder_number(String order_number) {
		this.order_number = order_number;
	}

	public void setIsStick(String isStrick) {
		this.isStick = isStrick;
	}
	public String getAddTime() {
		return addTime;
	}
	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
