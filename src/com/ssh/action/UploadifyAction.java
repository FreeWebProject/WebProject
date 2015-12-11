package com.ssh.action;

import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.stereotype.Component;

import com.ssh.model.User;
import com.ssh.util.ActionUtil;

@Component( value = "UploadifyAction" )
@Namespace( value = "/uploadify" )
@ParentPackage( value = "json-default" )
@SuppressWarnings("serial")
public class UploadifyAction extends ActionUtil{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String json ;
	
	
	//上传文件
	@Action(
		  value = "uploadify"
		  
		)
	public void uploadify(){
		JSONObject jsonObject = JSONObject.fromObject( json ) ;
		User user = new User() ;
		
		user.setSelf( jsonObject.getString( "name" )) ;
		hibernateUtil.saveOrUpdate( user ) ;
		System.out.println("success");
	}
	
	
	
	
	
	
	
	
	
	
	
	public String getJson() {
		return json;
	}
	public void setJson(String json) {
		this.json = json;
	}
	
	
	

}
