package com.product.home.SERVICE;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.product.home.DTO.busaddressDTO;
import com.product.home.DTO.cancelingpageDTO;
import com.product.home.DTO.loginDTO;
import com.product.home.DTO.registerotpDTO;
import com.product.home.DTO.userchackDTO;
import com.product.home.ENTITY.BUSINFO;
import com.product.home.ENTITY.passagerdetail;

@Service
@Component
public interface Serviceclass {
	
	public boolean ChackUser(userchackDTO userchackdto);
	
	public String otpgeneration();
	
	public void addUser(registerotpDTO values); 
	
	public boolean loginchack(loginDTO logindto);
	
	public List<BUSINFO> getbusinfo(busaddressDTO busaddressdto);
	
//	public int getcount(String date,String busno);
	
	public void addfinall(passagerdetail data);
	
	public List<Integer> getavailable(String date,List<BUSINFO> data);
	
	public List<passagerdetail> getpassagerdetail(cancelingpageDTO value);
	
	public void deleteticket(int bookingnumber);
	
	
}
