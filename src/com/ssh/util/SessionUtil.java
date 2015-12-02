package com.ssh.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class SessionUtil {

	public static HttpSession obtainSession() {
		HttpServletRequest request = ServletActionContext.getRequest() ;
		HttpSession session = request.getSession() ;
		
		return session ;
	}
	
}
