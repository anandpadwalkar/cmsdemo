package com.iitms.cms.masters.dao;

import java.util.List;

import com.iitms.cms.masters.entity.ComplaintTypeEntity;

public interface ComplaintTypeDao {

	public boolean addComplaint(ComplaintTypeEntity entity);
	public List<ComplaintTypeEntity> getComplaints(int deptId);
	
	
}
