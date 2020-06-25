package com.capt.inv.service;

import java.util.List;

import com.capt.inv.model.Pledge;

public interface PledgeService {
	
	boolean deletePledge(int id);
	Pledge findPledge(int id);
	Pledge addPledge(Pledge pledge);
	List<Pledge> findAllPledgesForProject(int projectId);

}
