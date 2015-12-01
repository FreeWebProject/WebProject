package com.ssh.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ssh.dao.HibernateUtil;

/**
 * 数据库简单操作的工具类
 * */
@Component( value = "hibernateUtil" )
public class HibernateUtilImpl implements HibernateUtil {
	
	private SessionFactory sessionFactory ;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Object saveOrUpdate(Object entity) {
		Session session = sessionFactory.getCurrentSession() ;
		
		session.saveOrUpdate( entity ) ;
		session.flush() ;
		
		return entity ;
	}
	
}
