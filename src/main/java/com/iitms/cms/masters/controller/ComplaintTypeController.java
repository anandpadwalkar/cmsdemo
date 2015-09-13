package com.iitms.cms.masters.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iitms.cms.masters.entity.ComplaintTypeEntity;
import com.iitms.cms.masters.service.ComplaintTypeService;

@Controller
@RequestMapping("/types")
public class ComplaintTypeController {

	private static final Logger logger = LoggerFactory.getLogger(ComplaintTypeController.class);
	
	@Autowired
	private ComplaintTypeService complaintTypeService;
	
	@RequestMapping(value = "/get-complaints")
	public @ResponseBody List<ComplaintTypeEntity> getComplaintList(@RequestParam(required = false) Integer deptId){
		logger.info("Get complaints : " + deptId + " - " + complaintTypeService);
		List<ComplaintTypeEntity> list = complaintTypeService.getComplaints(deptId);
		return list;
	}
	
	@RequestMapping(value = "/add-complaint", method = RequestMethod.POST)
	//public String addComplaint(@RequestParam(value = "complaint") ComplaintTypeEntity complaint){
	public String addComplaint(@ModelAttribute(value = "complaint") ComplaintTypeEntity complaint){
		logger.info("Complaint : " + complaint);
		complaintTypeService.addComplaint(complaint);
		return "redirect:/types/";
	}
	
	@RequestMapping(value = "/")
	public String getComplaintTypes(Model model){
		model.addAttribute("complaint", new ComplaintTypeEntity());
		return "complaint-type";
	}
}
