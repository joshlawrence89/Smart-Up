package com.capt.inv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capt.inv.model.Pledge;
import com.capt.inv.repository.PledgeRepository;
import com.capt.inv.repository.ProjectRepository;
import com.capt.inv.repository.UserRepository;

@Service
public class PledgeServiceImpl implements PledgeService {
	
	
	@Autowired
	PledgeRepository pledgeRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	ProjectRepository projectRepository;
	@Autowired
	ProjectService projectService;
	@Autowired
	UserService userService;
	
	
	@Override
	public Pledge findPledge(int id) {
		if(pledgeRepository.existsById(id)) {
			return pledgeRepository.findById(id).get();
		}
		return null;
	}
	
	@Override
	public boolean deletePledge(int id) {
		if (pledgeRepository.existsById(id))
		{
			pledgeRepository.deleteById(id);
			return true;
		}
		return false;
	}
	
	@Override
	public Pledge addPledge(Pledge pledge) {
		if(pledge.getProject().getStatus().equals("Closed")) {
			return null; 
		}
		
		pledgeRepository.save(pledge);	
		pledge.getProject().isTargetAchieved(pledge.getPledgeAmount());
		
		int total = 0;
		for(Pledge temp : pledge.getProject().getPledges()) {
			total += temp.getPledgeAmount();
		}
		if((total + pledge.getPledgeAmount()) >= pledge.getProject().getTargetAmount()) {
			pledge.getProject().setStatus( "Closed");
		}
		projectRepository.save(pledge.getProject());
		
		return pledge;
	}
	
	@Override
	public List<Pledge> findAllPledgesForProject(int projectId) {
		if(projectRepository.existsById(projectId)) {
			List<Pledge> pledges = pledgeRepository.findByProject_ProjectId(projectId);
			return pledges;
		}
	
		return null;
	}

}
