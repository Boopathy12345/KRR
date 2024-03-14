package com.product.home.REPOSITRIY;


import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.product.home.ENTITY.USER;



@Repository
public interface userrep extends CrudRepository<USER,Integer>{

	public List<USER> findByEmail(String email);
	
	public List<USER> findByPhonenumber(String phonenumber);
	
}
