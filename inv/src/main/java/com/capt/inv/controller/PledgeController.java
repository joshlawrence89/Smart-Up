package com.capt.inv.controller;

import org.junit.jupiter.params.shadow.com.univocity.parsers.annotations.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.capt.inv.model.Pledge;
import com.capt.inv.service.PledgeService;
import com.capt.inv.service.ProjectService;
import com.capt.inv.service.UserService;

@Controller
public class PledgeController {

	
	@Autowired
	PledgeService pledgeService;
	@Autowired
	ProjectService projectService;
	@Autowired
	UserService userService;
	
	
	@GetMapping("/newpledge")
	public String addNewPledgeForm(Model model)
	{
		Pledge pledge = new Pledge();		
		model.addAttribute("pledge", pledge);
		model.addAttribute("projects", projectService.listAllProjects());
		
		return "newpledge";
	}
	
	@PostMapping("/newpledge")
	public String addNewPledgeSave(@Validated Pledge pledge, BindingResult binding, RedirectAttributes redirectAttributes)
	{
		pledge.setUser(userService.findById(1)); //CHANGE TO ACTUAL MEMBER
		if (binding.hasErrors())
			return "newpledge";
		
		if (pledgeService.addPledge(pledge) == null)
		{
		redirectAttributes.addFlashAttribute("duplicate", true);
		return "redirect:"+pledge.getProject().getProjectId();
		}
		
		return "redirect:"+pledge.getProject().getProjectId();	//******Get rid of parenthesis maybe****
	}
	
}
