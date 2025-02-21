package com.capt.inv.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.capt.inv.model.Project;
import com.capt.inv.model.Users;

public interface UserRepository extends JpaRepository<Users, Integer> {

	Optional<Users> findByEmail(String email);

	@Query("FROM Users WHERE email=?1 AND password=?2")
	Optional<Users> login(String email, String password);
	
	@Query("From Users u WHERE u.lname=?1 OR u.fname=?1")
	List<Users> searchUser(String keyword);

}
