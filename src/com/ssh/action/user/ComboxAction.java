package com.ssh.action.user;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.ssh.dao.ComboxDao;
import com.ssh.model.Combox;
import com.ssh.util.ActionUtil;
import com.ssh.util.ResponseUtil;

/*
 * @Component --- spring注解，将这个类交给spring来管理  value 为他的名字
 * @Scope --- spring注解，指定Component的scope  action一定要指定为 "prototype"
 * @NameSpace --- struts2注解,action的命名空间
 * */
@Component( value = "ComboxAction" )
@Scope( value = "prototype" )
@Namespace( value = "/combox" )
@ParentPackage( value = "json-default" )
@SuppressWarnings("serial")
public class ComboxAction extends ActionUtil {
	private ComboxDao comboxDao ;
	private String dictionaryKey ;
	private Combox combox ;
	/*
	 * @Action --- struts2注解,在方法上加@Action注解,表明这是一个action,并用@Result表明返回结果
	 * */


	@Action(
		value = "list",
		results = { @Result( type = "json" ) }
	)
	public void list() {
		JSONArray jsonArray = new JSONArray() ;
		jsonArray = comboxDao.queryByKey( dictionaryKey ) ;
	//	jsonArray = comboxDao.queryByKeyAndValue( dictionaryKey, "1") ;
		JSONObject result = new JSONObject() ;
		result.put("value", jsonArray) ;
		result.put("code", "200") ;
		result.put("redirect", "") ;
		result.put("message", "") ;
		
		ResponseUtil.sendMsgToPage( result.toString() ) ;
	}
	
	@Action(
		value = "formData",
		results = { @Result( type = "json") }
		)
	public void formData() {
		System.out.println("===============");
		System.out.println( combox.getDictionary_value() );
		System.out.println("===============");
	}
	public ComboxDao getComboxDao() {
		return comboxDao;
	}

	public void setComboxDao(ComboxDao comboxDao) {
		this.comboxDao = comboxDao;
	}

	public String getDictionaryKey() {
		return dictionaryKey;
	}

	public void setDictionaryKey(String dictionaryKey) {
		this.dictionaryKey = dictionaryKey;
	}

	public Combox getCombox() {
		return combox;
	}

	public void setCombox(Combox combox) {
		this.combox = combox;
	}

}
