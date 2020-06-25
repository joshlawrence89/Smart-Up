package com.capt.inv.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.capt.inv.model.Project;
import com.capt.inv.model.Users;


public interface ProjectRepository extends JpaRepository<Project, Integer>{

	boolean existsByProjectName(String projectName);
	Project findByProjectName(String projectName);
	
	@Query("SELECT p.projectName FROM Project p where p.projectId = :id") 
	String findNameById(@Param("id") int id);
	
	@Query("SELECT p.description FROM Project p where p.projectId = :id") 
	String findDescriptionById(@Param("id")int id);

	@Query("SELECT p.targetAmount FROM Project p where p.projectId = :id") 
	int findTargetAmount(@Param("id") int id);
	
	@Query("SELECT p.dateCreation FROM Project p where p.projectId = :id") 
	LocalDate findDateCreation(@Param("id") int id);
	
	List<Project> findAllByUser(Users user);
	
}