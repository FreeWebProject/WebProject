package com.ssh.util;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.impl.HibernateUtilImpl;

@SuppressWarnings("serial")
public class ActionUtil extends ActionSupport {

	protected HibernateUtilImpl hibernateUtil ;

	public HibernateUtilImpl getHibernateUtil() {
		return hibernateUtil;
	}

	public void setHibernateUtil(HibernateUtilImpl hibernateUtil) {
		this.hibernateUtil = hibernateUtil;
	}
	
}
