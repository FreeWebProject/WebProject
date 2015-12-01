package com.ssh.dao;

/**
 * 数据库简单操作的工具类
 * */
public interface HibernateUtil {

	/**
	 * 保存或更新
	 * */
	Object saveOrUpdate( Object entity ) ;
	
}
