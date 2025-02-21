package com.capt.inv.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capt.inv.repository.ProjectRepository;
import com.capt.inv.repository.UserRepository;

import com.capt.inv.model.*;
import com.capt.inv.repository.*;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	ProjectRepository projectRepository;
	
	@Autowired
	UserService userService;
	
	
	public List<Project> listAllProjects() {
		// TODO Auto-generated method stub
		return projectRepository.findAll();
	}
	
	
	public Project findProject(int id) {
		if(projectRepository.existsById(id)) {
			return projectRepository.findById(id).get();
		}
		return null;
	}
	
	
	public Project findByName(String projectName) {
		if(projectRepository.existsByProjectName(projectName))
			return projectRepository.findByProjectName(projectName);
		return null;
	}
	
	
	public boolean deleteProject(int id) {
		if (projectRepository.existsById(id))
		{
			projectRepository.deleteById(id);
			return true;
		}
		return false;
	}
	
	
	public boolean addProject(Project project) { //Create a project, save it to projectRepo and add project to list of projects for that user
		//if(memberService.isUserAuthenticated(project.getMember().getMemberId())) {	//First check if member is authenticated to create a project
			projectRepository.save(project);
			//memberService.addProject(project.getMember().getMemberId(), project);
			return true; //When project is added successfully return true
		//}
		//return false; //Else return false
	}
	
	
	public String findProjectName(int id) {
		if (projectRepository.existsById(id))
			return projectRepository.findNameById(id);
		return null;
	}
	
	
	public String findProjectDesc(int id) {
		if(projectRepository.existsById(id))
			return projectRepository.findDescriptionById(id);
		return null;
	}
	
	
	public int findProjectTargetAmount(int id) {
		if(projectRepository.existsById(id))
			return projectRepository.findTargetAmount(id);
		return 0;
	}
	
	
	public LocalDate findProjectDateCreation(int id) {
		if(projectRepository.existsById(id))
			return projectRepository.findDateCreation(id);
		return null;
	}

	
	public List<Pledge> findAllPledgesForProject(int projectId){
		if(projectRepository.existsById(projectId)){
			return findProject(projectId).getPledges();
		}
		return null;
	}
	
	
	public boolean editDescription(int projectId, String description) {
		if(projectRepository.existsById(projectId)){
			Project project = findProject(projectId);
			project.setDescription(description);
			projectRepository.save(project);
			return true;
		}
		
		return false;
	}


	@Override
	public List<Project> listAllProjectsByUser(Users user) {
		
		return projectRepository.findAllByUser(user);
	}
}
