package com.capt.inv.model;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="contactInfo")
public class ContactInfo {
	
	
	public ContactInfo() {
	}
	
	@Id	
	private int id;
	
	private String street;
	private String zip;
	private String state;
	private String city;
	private String phone;
	
	@JsonIgnore
	@OneToOne
	@MapsId
	private Users user;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "ContactInfo [id=" + id + ", street=" + street + ", zip=" + zip + ", state=" + state + ", city=" + city
				+ ", phone=" + phone + ", user=" + user + "]";
	}
}
