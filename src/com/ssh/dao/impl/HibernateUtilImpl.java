package com.ssh.dao.impl;

import java.util.List;

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
	private Session session ;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Object saveOrUpdate(Object entity) {
		session = sessionFactory.getCurrentSession() ;
		
		session.saveOrUpdate( entity ) ;
		session.flush() ;
		
		return entity ;
	}

	@Override
	public List<?> queryWithOneWhere( Object entity, String whereColumn, String whereValue) {
		session = sessionFactory.getCurrentSession() ;
		
		String hql = "from " + entity.getClass().getName() + " where " + whereColumn + " = '" + whereValue + "' " ;
		
		List<?> result = session.createQuery( hql ).list() ;
		
		return result;
	}
	
}
