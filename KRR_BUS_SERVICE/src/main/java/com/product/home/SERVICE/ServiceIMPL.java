package com.product.home.SERVICE;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.home.DTO.busaddressDTO;
import com.product.home.DTO.cancelingpageDTO;
import com.product.home.DTO.loginDTO;
import com.product.home.DTO.registerotpDTO;
import com.product.home.DTO.userchackDTO;
import com.product.home.ENTITY.BUSINFO;
import com.product.home.ENTITY.USER;
import com.product.home.ENTITY.passagerdetail;
import com.product.home.REPOSITRIY.businforepositriy;
import com.product.home.REPOSITRIY.passagerdetailrepositriy;
import com.product.home.REPOSITRIY.userrep;

@Service
public class ServiceIMPL implements Serviceclass {

	@Autowired
	private userrep userRep;
	
	
	public boolean ChackUser(userchackDTO userchackdto) {
		if(userRep.findByEmail(userchackdto.getEmail()).isEmpty() && userRep.findByPhonenumber(userchackdto.getPhonenumber()).isEmpty()) {
			return true;
		}
		else {
			return false;
		}
	}
	
	public String otpgeneration() {
		Random random = new Random();
        int randomNumber = random.nextInt(9000) + 1000;
        String randomNumberString = String.valueOf(randomNumber);
        return randomNumberString;
	}
	
	public void addUser(registerotpDTO values) {
//		System.out.println("serice");
		
		USER user=new USER(values.getName(),
				values.getEmail(),
				values.getPassword(),
				values.getPhonenumber());
		
		    userRep.save(user);  
	}
	
	public boolean loginchack(loginDTO logindto) {
		List<USER> data=userRep.findByEmail(logindto.getEmail());
		
		if(data.isEmpty()) {
			return false;
		}
		else {
			String PASSWORD=data.get(0).getPassword();
			if(PASSWORD.equals(logindto.getPassword())){
				return true;
			}
			else {
				return false;
			}
		}
	}
	
	@Autowired
	private businforepositriy busrep;
	
	public List<BUSINFO> getbusinfo(busaddressDTO busaddressdto){
//		System.out.println("getbusinfo");
		return busrep.findByFromaddressAndToaddress(busaddressdto.getFromaddress(),busaddressdto.getToaddress());
	}
	
	
	@Autowired
	private passagerdetailrepositriy detail;
	
//	public int getcount(String date,String busno) {
//		List<passagerdetail> data=detail.findByBusnoAndDate(busno,date);
//		int Count=data.size();
//		for(passagerdetail a:list) {
//			Count++;
//		}
//		return Count;
//	}
	
	public List<Integer> getavailable(String date,List<BUSINFO> data){
		List<Integer> values = new ArrayList<>();
	    for (int i = 0; i < data.size(); i++) {
	        List<passagerdetail> passengers = detail.findByBusnoAndDate(data.get(i).getBusno(), date);
	        int count = passengers.size();
	        int total = data.get(i).getCapacity();
	        int available = total - count;
	        values.add(available);
	    }
	    return values;
	}
	
	
	public void addfinall(passagerdetail data) {
		detail.save(data);
	}
	
	
	public List<passagerdetail> getpassagerdetail(cancelingpageDTO value){
		
		List<passagerdetail> passangers = detail.findByBookingnumber(value.getBookingnumber());
		return passangers;
	}
	
	public void deleteticket(int bookingnumber) {
		detail.deleteById(bookingnumber);
	}
	
	
	
}
