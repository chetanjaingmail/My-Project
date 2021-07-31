package com.example.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.bean.UserDetails;
@Repository
public interface UserRepository extends JpaRepository<UserDetails, String> {
@Modifying
@Transactional
@Query(value="delete from UserDetails where name=?1")

	public void deleteByName(String name);

@Modifying
@Transactional
@Query(value="update UserDetails set name=?1 where pwd=?2")
public void updateUser(String name,String pwd);
@Modifying
@Transactional
@Query("From UserDetails where name=?1")

public void getByName(String name);





	



	
	










}
