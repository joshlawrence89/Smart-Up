package com.capt.inv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.capt.inv.model.Project;
import com.capt.inv.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
//	@GetMapping("/")
//	public String myProjects(Model model) {
//		List<Project> myprojects = userService.findAllProjectsForUser(1);
//		model.addAttribute("myprojects", myprojects);
//		return "mycampaigns";
// }
}
