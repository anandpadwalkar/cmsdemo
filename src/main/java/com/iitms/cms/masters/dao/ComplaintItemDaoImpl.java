package com.iitms.cms.masters.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iitms.cms.masters.entity.ComplaintItemMasterEntity;

@Repository
public class ComplaintItemDaoImpl implements ComplaintItemDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean addComplaintItem(ComplaintItemMasterEntity entity) {
		this.sessionFactory.getCurrentSession().save(entity);
		return true;
	}

	
}
