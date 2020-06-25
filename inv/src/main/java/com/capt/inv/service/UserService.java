package com.capt.inv.service;

import java.util.List;
import java.util.Optional;

import com.capt.inv.model.Project;
import com.capt.inv.model.Users;

public interface UserService {
	
	Optional<Users> findByEmail(String email);
	
	Optional<Users> login(String userName, String password);
	
	List<Users> searchUser(String keyword);
	
	Optional<Users> findById(int id);
	
	void deleteUser(int id);
	
	void save(Users user);
	
	void addRole(int id, String role);
	
	void updateUser(String fname, String lname, String email);
	
	List<Users> findAll();
	
	void addProject(int id, Project project);

	List<Project> findAllProjectsForUser(int id);
	
	Optional<Users> findUser(int id);
	

}
