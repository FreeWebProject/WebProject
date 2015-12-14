package com.ssh.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import net.sf.json.JSONObject;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;
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
	private File uploadify ;
	private String uploadifyFileName ;
	


	//上传文件
	@Action(
		  value = "uploadify"
		  
		)
	public void uploadify() throws IOException {
		
		
		String savePath = ServletActionContext.getServletContext().getRealPath( "/upload/" ) ;
		String newsuffix = "" ;
		String current = UUID.randomUUID().toString().replace("-", "") ; 
		
		if( (uploadifyFileName != "") && (uploadifyFileName.length() > 0) ){
			int dot = uploadifyFileName.lastIndexOf(".") ;
			if( (dot > -1) && (dot < uploadifyFileName.length() - 1)){
				newsuffix = uploadifyFileName.substring(dot + 1) ;
			}
		}
		FileInputStream fis = new FileInputStream( uploadify ) ;
		FileOutputStream fos = new FileOutputStream( savePath + "/" + current + "." + newsuffix ) ;
		IOUtils.copy( fis, fos ) ;
		fos.flush(); 
		fos.close();
		fis.close();
		
		
		JSONObject jsonObject = JSONObject.fromObject( json ) ;
		User user = new User() ;
		user.setSelf( jsonObject.getString( "name" )) ;
		hibernateUtil.saveOrUpdate( user ) ;
		
	}
	
	
	public String getJson() {
		return json;
	}
	public void setJson(String json) {
		this.json = json;
	}


	public File getUploadify() {
		return uploadify;
	}

	public void setUploadify(File uploadify) {
		this.uploadify = uploadify;
	}
	
	public String getUploadifyFileName() {
		return uploadifyFileName;
	}

	public void setUploadifyFileName(String uploadifyFileName) {
		this.uploadifyFileName = uploadifyFileName;
	}
	

}
