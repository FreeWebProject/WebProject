package com.ssh.model;

import java.sql.Blob;

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

	private String age ;
	private String birthday ;
	private String education ;
	private String email ;
	private String hobby ;
	private String id ;
	private String name ;
	private String password ;
	private String phone ;
	private String self ;
	private String sex ;
	
	@Column( name = "age", length = 32 )
	public String getAge() {
		return age;
	}
	
	@Column( name = "birthday", length = 32 )
	public String getBirthday() {
		return birthday;
	}

	@Column( name = "education", length = 32 )
	public String getEducation() {
		return education;
	}
	
	@Column( name = "email", length = 32 )
	public String getEmail() {
		return email;
	}
	
	@Column( name = "hobby", length = 32 )
	public String getHobby() {
		return hobby;
	}
	
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

	@Column( name = "name", length = 128 )
	public String getName() {
		return name;
	}
	
	@Column( name = "password", length = 128 )
	public String getPassword() {
		return password;
	}

	@Column( name = "phone", length = 32 )
	public String getPhone() {
		return phone;
	}
	@Column( name = "self", length = 1024 )
	public String getSelf() {
		return self;
	}

	@Column( name = "sex", length = 32 )
	public String getSex() {
		return sex;
	}
	
	public void setAge(String age) {
		this.age = age;
	}
	
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public void setEducation(String education) {
		this.education = education;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setSelf(String self) {
		this.self = self;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
}
