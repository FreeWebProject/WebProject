package com.ssh.util;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.impl.HibernateUtilImpl;

@SuppressWarnings("serial")
public class ActionUtil extends ActionSupport {

	/**
	 * 执行简单数据库操作的工具类
	 * */
	protected HibernateUtilImpl hibernateUtil ;
	
	/**
	 * bootstrap-table所需参数
	 * */
	protected String limit ;
	protected String offset ;
	protected String order ;
	protected String sort ;
	
	/**
	 * 接受 ajax 数据
	 * */
	protected String ajaxData ;

	public HibernateUtilImpl getHibernateUtil() {
		return hibernateUtil;
	}

	@Autowired
	public void setHibernateUtil(HibernateUtilImpl hibernateUtil) {
		this.hibernateUtil = hibernateUtil;
	}

	public String getLimit() {
		return limit;
	}

	public void setLimit(String limit) {
		this.limit = limit;
	}

	public String getOffset() {
		return offset;
	}

	public void setOffset(String offset) {
		this.offset = offset;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}
	
	public String getAjaxData() {
		return ajaxData;
	}

	public void setAjaxData(String ajaxData) {
		this.ajaxData = ajaxData;
	}
	
}
