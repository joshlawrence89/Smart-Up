package com.capt.inv.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.capt.inv.model.Pledge;

public interface PledgeRepository extends JpaRepository<Pledge, Integer> {
	
	List<Pledge> findByProject_ProjectId(int projectId);

}
