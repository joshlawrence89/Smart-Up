package com.capt.inv.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;


@Entity
@Table(name="users")
public class Users {
	
	public Users() {}
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(name="username")
	private String email;
	
	private String fname;
	private String lname;
	private String password;
	private String role;
	private String image;
	
	
	@OneToOne(mappedBy="user",cascade=CascadeType.ALL)
	ContactInfo contactInfo;
	
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL)
	private List<PaymentMethod> paymentMethod;
	
	@OneToMany(mappedBy = "user", cascade= CascadeType.ALL)
	private List<Pledge> pledges = new ArrayList<Pledge>();
	
	@OneToMany(mappedBy = "user", cascade= CascadeType.ALL)
	private List<Project> projects = new ArrayList<Project>();
	
	
	
	public int getid() {
		return id;
	}

	public void setid(int userId) {
		this.id = userId;
	}

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return email;
	}

	public void setUserName(String userName) {
		this.email = userName;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	public List<Pledge> getPledges() {
		return pledges;
	}

	public void addPledge(Pledge pledge) {
		pledges.add(pledge);
	}
	
	public List<Project> getProjects() {
		return projects;
	}

	public void addProject(Project project) {
		projects.add(project);
	}

	public List<PaymentMethod> getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(List<PaymentMethod> paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public ContactInfo getContactInfo() {
		return contactInfo;
	}
	public void setContactInfo(ContactInfo contactInfo) {
		this.contactInfo = contactInfo;
	}
}