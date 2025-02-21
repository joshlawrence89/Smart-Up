package com.capt.inv.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import com.capt.inv.model.Pledge;
import com.capt.inv.model.Project;
import com.capt.inv.model.Users;



public interface ProjectService {
	
	List<Project> listAllProjects();

	//List<Project> listAllProjects(Users user);

	Project findProject(int id);

	Project findByName(String projectName);

	boolean deleteProject(int id);

	LocalDate findProjectDateCreation(int id);

	int findProjectTargetAmount(int id);
	
	String findProjectDesc(int id);
	String findProjectName(int id);


	boolean addProject(Project project);

	List<Pledge> findAllPledgesForProject(int projectId);

	boolean editDescription(int projectId, String description);

	List<Project> listAllProjectsByUser(Users user);

}
