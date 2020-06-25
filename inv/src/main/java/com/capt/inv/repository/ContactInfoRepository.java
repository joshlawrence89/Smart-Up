package com.capt.inv.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.capt.inv.model.ContactInfo;

public interface ContactInfoRepository extends JpaRepository<ContactInfo, Integer> {
	

}
