package com.capt.inv.service;

import java.util.ArrayList;
import java.util.List;

import java.util.Optional;

import javax.transaction.Transactional;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capt.inv.model.Project;
import com.capt.inv.model.Users;
import com.capt.inv.repository.ProjectRepository;
import com.capt.inv.repository.UserRepository;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserRepository userRepository;
	@Autowired
	ProjectRepository projectRepository;
	@Autowired
	ProjectService projectService;
	@Autowired
	PledgeService  pledgeService;
	
	
	
	@Override
	public Optional<Users> findByEmail(String email) {
	
		return userRepository.findByEmail(email);
	}

	@Override
	public Optional<Users> login(String email, String password) {
		
		return userRepository.login(email, password);
	}

	@Override
	public List<Users> searchUser(String keyword) {
		
		return userRepository.searchUser(keyword);
	}

	@Override
	public Optional<Users> findById(int id) {
		
		return userRepository.findById(id);
	}

	@Override
	public void deleteUser(int id) {
		userRepository.deleteById(id);
		
	}

	@Override
	public void save(Users user) {
		userRepository.save(user);
	}

	@Override
	public void addRole(int id, String role) {
		findById(id).ifPresent(a->{
			a.setRole(role);
		});
	}

	@Override
	public void updateUser(String fname, String lname, String email) {
		findByEmail(email).ifPresent(a-> {
			a.setFname(fname);
			a.setLname(lname);
		});
	}

	@Override
	public List<Users> findAll() {
		
		return userRepository.findAll();
	}

	@Override
	public Optional<Users> findUser(int id) {
		
		return userRepository.findById(id);
	}

	@Override
	public void addProject(int userId, Project project) {
		findUser(userId).ifPresent(p-> {
			project.setUser(p);
			projectRepository.save(project);
		});
	}

	@Override
	public List<Project> findAllProjectsForUser(int userId) {
		List<Project> projects = new ArrayList<>();
		if(userRepository.existsById(userId)) {
		
			findUser(userId).ifPresent(user-> {
			projects.addAll(user.getProjects());
		});
				
		}
		return projects;
	}

}

