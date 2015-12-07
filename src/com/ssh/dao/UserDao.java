package com.ssh.dao;

import com.ssh.model.User;

public interface UserDao {

	/**
	 * 保存或更新
	 * */
	void saveOrUpdate( User user ) ;

}
