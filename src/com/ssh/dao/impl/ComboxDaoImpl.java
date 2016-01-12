package com.ssh.dao.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ssh.dao.ComboxDao;

@Component( value = "comboxDao")
public class ComboxDaoImpl implements ComboxDao {
	private SessionFactory sessionFactory ;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//通过dictionary_key查找
	@Override
	public JSONArray queryByKey(String dictionaryKey) {
		
		Session session = sessionFactory.getCurrentSession() ;
		String hql = "from Combox where dictionary_key='" + dictionaryKey + "' order by order_number * 1"  ;
		List<?> result = session.createQuery( hql ).list() ;
		JSONArray jsonArray = JSONArray.fromObject( result ) ;
		
		return jsonArray ;
	}

	//通过dictionary_key和dictionary_value查找
	@Override
	public JSONArray queryByKeyAndValue(String key, String value) {
		Session session = sessionFactory.getCurrentSession() ;
		String hql = "from Combox where dictionary_key='" + key + "'" + " and dictionary_value='" + value +  "' order by order_number"  ;
		List<?> result = session.createQuery( hql ).list() ;
		JSONArray jsonArray = JSONArray.fromObject( result ) ;
		
		return jsonArray ;
	}

}
