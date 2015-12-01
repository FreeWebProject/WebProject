package com.ssh.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ssh.dao.UserDao;
import com.ssh.model.User;

@Service
@Component( value = "userDao" )
public class UserDaoImpl implements UserDao {
	
	private SessionFactory sessionFactory ;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void saveOrUpdate( User user ) {
		Session session = sessionFactory.getCurrentSession() ;
		session.saveOrUpdate( user );
	}

}
