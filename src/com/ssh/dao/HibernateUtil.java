package com.ssh.dao;

import java.util.List;

/**
 * 数据库简单操作的工具类
 * */
public interface HibernateUtil {

	/**
	 * 保存或更新<br>
	 * 参数：实体类entity<br>
	 * 返回值：保存之后从数据库将此条记录取回并返回
	 * */
	Object saveOrUpdate( Object entity ) ;
	
	/**
	 * 只有一个where条件的查询<br>
	 * 参数：entry = 实体类，whereColumn = 条件字段，whereValue = 条件值<br>
	 * 返回值：List<?>查询出来的数据集合
	 * */
	List<?> queryWithOneWhere( Object entity, String whereColumn, String whereValue ) ;
	
	/**
	 * 查询所有<br>
	 * 参数：entity = 实体类<br>
	 * 返回值：List<?>查询出来的数据集合
	 * */
	List<?> queryAll( Object entity ) ;
	
}
