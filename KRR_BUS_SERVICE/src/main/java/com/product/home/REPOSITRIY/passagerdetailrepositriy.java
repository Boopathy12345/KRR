package com.product.home.REPOSITRIY;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.product.home.ENTITY.passagerdetail;

@Repository
public interface passagerdetailrepositriy extends CrudRepository<passagerdetail,Integer> {

	public List<passagerdetail> findByBusnoAndDate(String busno,String date);
	
	public List<passagerdetail> findByBookingnumber(int bookingnumber);
}
