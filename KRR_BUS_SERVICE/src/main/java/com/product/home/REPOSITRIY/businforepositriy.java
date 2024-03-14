package com.product.home.REPOSITRIY;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.product.home.ENTITY.BUSINFO;

public interface businforepositriy extends CrudRepository<BUSINFO,String>{

	public List<BUSINFO> findByFromaddressAndToaddress(String fromaddress,String toaddress);
}
