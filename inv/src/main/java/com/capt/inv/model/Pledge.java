package com.capt.inv.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.apache.catalina.User;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import javax.persistence.Id;

@Entity
public class Pledge {
	
	public Pledge() {}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int pledgeId;
	@Column(nullable=false)
	private int pledgeAmount;
	
	@ManyToOne
	@JoinColumn(name="userId")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Users user;
	
	@ManyToOne
	@JoinColumn(name="projectId")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Project project;

	
	public int getPledgeId() {
		return pledgeId;
	}
	public void setPledgeId(int pledgeId) {
		this.pledgeId = pledgeId;
	}	
	
	public int getPledgeAmount() {
		return pledgeAmount;
	}
	public void setPledgeAmount(int pledgeAmount) {
		this.pledgeAmount = pledgeAmount;
	}

	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public void setUser(Optional<Users> findById) {
		// TODO Auto-generated method stub
		
	}
}