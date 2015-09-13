package com.iitms.cms.masters.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iitms.cms.masters.entity.ComplaintTypeEntity;

@Repository
public class ComplaintTypeDaoImpl implements ComplaintTypeDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean addComplaint(ComplaintTypeEntity entity) {
		this.sessionFactory.getCurrentSession().save(entity);
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ComplaintTypeEntity> getComplaints(int deptId) {
		List<ComplaintTypeEntity> list = this.sessionFactory.getCurrentSession()
							.createCriteria(ComplaintTypeEntity.class)
							.add(Restrictions.eq("deptId", deptId))
							.list();
		return list;
	}

	
	
}
