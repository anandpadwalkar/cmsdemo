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

import com.iitms.cms.masters.entity.ComplaintDepartment;
import com.iitms.cms.masters.service.ComplaintDepartmentService;

@Controller
@RequestMapping(value = "/complaint")
public class ComplaintDepartmentController {

	private static final Logger logger = LoggerFactory.getLogger(ComplaintDepartmentController.class);
	
	@Autowired
	private ComplaintDepartmentService complaintDepartmentService;
	
	@RequestMapping(value = "/add-dept", method = RequestMethod.POST)
	public String addDepartment(@ModelAttribute ComplaintDepartment department, Model model){
		logger.info("Dept : " + department);
		complaintDepartmentService.addComplaintDepartment(department);
		//List<ComplaintDepartment> list = complaintDepartmentService.getComplaintDepartmentList();
		//model.addAttribute("list", list);
		//model.addAttribute("department", new ComplaintDepartment());
		return "redirect:/complaint/list-dept";
	}
	
	/*@RequestMapping(value = "/update-dept", method = RequestMethod.POST)
	public String updateDepartment(@ModelAttribute ComplaintDepartment entity, Model model){
		complaintDepartmentService.updateComplaintDepartment(entity);
		List<ComplaintDepartment> list = complaintDepartmentService.getComplaintDepartmentList();
		model.addAttribute("list", list);
		return "complaint-dept-1";
	}*/
	
	@RequestMapping(value = "/update-dept", method = RequestMethod.POST)
	public String updateDepartment(@RequestParam("dept-id") Integer[] deptIds, @RequestParam("deptname") String deptnames, Model model){
		logger.info(deptIds + " - " + deptnames);
		for(Integer i : deptIds)
			logger.info(""+i);
		/*complaintDepartmentService.updateComplaintDepartment(entity);
		List<ComplaintDepartment> list = complaintDepartmentService.getComplaintDepartmentList();
		model.addAttribute("list", list);*/
		return "complaint-dept-1";
	}
	
	@RequestMapping(value = "/delete-dept", method = RequestMethod.POST)
	public String deleteDepartment(@RequestParam int id, Model model){
		complaintDepartmentService.deleteComplaintDepartment(id);
		List<ComplaintDepartment> list = complaintDepartmentService.getComplaintDepartmentList();
		model.addAttribute("list", list);
		return "complaint-dept-1";
	}
	
	@RequestMapping(value = "/list-dept", method = RequestMethod.GET)
	public String listDepartment(Model model){
		List<ComplaintDepartment> list = complaintDepartmentService.getComplaintDepartmentList();
		model.addAttribute("list", list);
		model.addAttribute("department", new ComplaintDepartment());
		return "complaint-dept-1";
	}
	
	@RequestMapping(value = "/all-dept", method = RequestMethod.POST)
	public @ResponseBody List<ComplaintDepartment> getAllDepartment(){
	
		List<ComplaintDepartment> list = complaintDepartmentService.getComplaintDepartmentList();
		return list;
	}
	
}
