package com.pms.base;

import java.lang.reflect.ParameterizedType;
import java.util.Collections;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.pms.hibernateutil.HibernateUtil;

@Transactional
public class DaoSupportImpl<T> implements DaoSupport<T> {

	private Class<T> clazz;

	public DaoSupportImpl() {
		ParameterizedType pType = (ParameterizedType) this.getClass().getGenericSuperclass();
		this.clazz = (Class<T>) pType.getActualTypeArguments()[0];
		System.out.println("clazz--->" + clazz);
	}

	@Override
	public void save(T entity) {
		HibernateUtil.getSession().save(entity);

	}

	@Override
	public void delete(Integer id) {
		Object object = getById(id);
		if (object != null) {
			HibernateUtil.getSession().delete(object);
		}

	}

	@Override
	public void update(T entity) {
		HibernateUtil.getSession().update(entity);

	}

	@Override
	public T getById(Integer id) {
		return (T) HibernateUtil.getSession().get(clazz, id);

	}

	@Override
	public List<T> getByIds(Long[] ids) {
		if (ids == null || ids.length == 0) {
			return Collections.EMPTY_LIST;
		} else {
			return HibernateUtil.getSession()
					.createQuery("FROM" + clazz.getSimpleName() + "WHERE id IN (:ids)")
					.setParameterList("ids", ids).list();

		}

	}

	@Override
	public List<T> findAll() {
		return HibernateUtil.getSession().createQuery("FROM" + clazz.getSimpleName()).list();
	}

}
