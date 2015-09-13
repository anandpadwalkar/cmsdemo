package com.iitms.cms.masters.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iitms.cms.masters.entity.ComplaintItemMasterEntity;
import com.iitms.cms.masters.service.ComplaintItemService;

@Controller
@RequestMapping("/item")
public class ComplaintItemController {
	
	private static final Logger logger = LoggerFactory.getLogger(ComplaintDepartmentController.class);
	@Autowired
	private ComplaintItemService complaintItemService;
	
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getComplaintItemForm(Model model){
		model.addAttribute("complaintItem", new ComplaintItemMasterEntity());
		return "add-complaint-items";
	}
	
	@RequestMapping(value = "/add-item", method = RequestMethod.POST)
	public String addComplaintItem(@ModelAttribute ComplaintItemMasterEntity complaintItem){
		complaintItemService.addComplaintItem(complaintItem);
		return "redirect:/item/add";
	}
}
