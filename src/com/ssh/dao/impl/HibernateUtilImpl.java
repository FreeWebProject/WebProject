package com.ssh.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ssh.dao.HibernateUtil;

import net.sf.json.JSONArray;

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

	@Override
	public List<?> queryAll(Object entity) {
		session = sessionFactory.getCurrentSession() ;
		
		String hql = "from " + entity.getClass().getName() ;
		
		List<?> result = session.createQuery( hql ).list() ;
		
		return result;
	}

	@Override
	public JSONArray queryAllReturnJson(Object entity) {
		List<?> resultList = queryAll( entity ) ;
		
		JSONArray jsonArray = JSONArray.fromObject( resultList ) ;
		
		return jsonArray;
	}

	@Override
	public void delete(Object entity) {
		session = sessionFactory.getCurrentSession() ;
		
		session.delete( entity ) ;
	}

	@Override
	public int delete(Object entity, String whereColumn, String[] whereValue) {
		session = sessionFactory.getCurrentSession() ;
		
		StringBuffer hql = new StringBuffer() ;
		hql.append( "delete " ) ;
		hql.append( entity.getClass().getName() ).append( " " ) ;
		hql.append( "where " ) ;
		hql.append( whereColumn ).append( " = '" ).append( whereValue[ 0 ] ).append( "' " ) ;
		
		if( whereValue.length > 1 ) {
			for( int i = 1; i < whereValue.length; i++ ) {
				hql.append( "or " ).append( whereColumn ).append( " = '" ).append( whereValue[ i ] ).append( "' " ) ;
			}
		}
		
		int result = session.createQuery( hql.toString() ).executeUpdate() ;
		
		return result ;
	}

	
}
