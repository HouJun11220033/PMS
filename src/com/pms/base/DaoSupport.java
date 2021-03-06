package com.pms.base;

import java.util.List;

public interface DaoSupport<T> {
	/**
	 * 保存实体
	 * 
	 * @param entity
	 */
	void save(T entity);

	/**
	 * 删除实体
	 * 
	 * @param id
	 */
	void delete(Integer id);

	/**
	 * 更新实体
	 * 
	 * @param entity
	 */
	void update(T entity);

	/**
	 * 按id查询
	 * 
	 * @param id
	 * @return
	 */

	T getById(Integer id);

	/**
	 * 按id查询
	 * 
	 * @param ids
	 * @return
	 */

	List<T> getByIds(Long[] ids);

	/**
	 * 查询所有
	 * 
	 * @return
	 */

	List<T> findAll();

	// public PageBean getPageBean(int pageNum, int pageSize, QueryHelper
	// queryHelper);

}
