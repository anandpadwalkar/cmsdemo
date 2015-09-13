package com.iitms.cms.masters.service;

import java.util.List;

import com.iitms.cms.masters.entity.ComplaintTypeEntity;

public interface ComplaintTypeService {

	public boolean addComplaint(ComplaintTypeEntity entity);
	public List<ComplaintTypeEntity> getComplaints(int deptId);
}
