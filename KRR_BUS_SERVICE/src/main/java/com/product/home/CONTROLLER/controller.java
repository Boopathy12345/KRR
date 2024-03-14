package com.product.home.CONTROLLER;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.product.home.DTO.busaddressDTO;
import com.product.home.DTO.cancelingotpDTO;
import com.product.home.DTO.cancelingpageDTO;
import com.product.home.DTO.loginDTO;
import com.product.home.DTO.registerotpDTO;
import com.product.home.DTO.userchackDTO;
import com.product.home.DTO.youerbuslistDTO;
import com.product.home.ENTITY.BUSINFO;
import com.product.home.ENTITY.passagerdetail;
import com.product.home.SERVICE.EmailService;
import com.product.home.SERVICE.Serviceclass;
@Controller
public class controller {

	@Autowired
	private Serviceclass serviceclass;
	
	@Autowired
	private EmailService emailservice;
	
	@RequestMapping("/index")
	public String index() {
		return "index.jsp";
	}
	
//	@RequestMapping("register")
//	public String register() {
////		System.out.println("chach");
//		return "register.jsp";
//	}
	
	private String otp;
	@RequestMapping("userchack")
	public ModelAndView userchack(userchackDTO user1) {
		
		if(serviceclass.ChackUser(user1)) {
			this.otp=serviceclass.otpgeneration();
			emailservice.otpsend(user1,otp);
			ModelAndView page=new ModelAndView("otppage.jsp");
			page.addObject("data",user1);
			return page;
		}
		else {
			String n="createpopup";
			ModelAndView page=new ModelAndView("register.jsp");
			page.addObject("registerpopup",n);
			return page;
		}
	}
	
	
	@RequestMapping("otpverify")
	public ModelAndView otpchack(registerotpDTO values) {
		String otpvalue[]=otp.split("");	
		System.out.print(otp);
		if(otpvalue[0].equals(values.getDigit1())&& otpvalue[1].equals(values.getDigit2()) && otpvalue[2].equals(values.getDigit3()) && otpvalue[3].equals(values.getDigit4())) {
			serviceclass.addUser(values);
			ModelAndView page=new ModelAndView("login.jsp");
			return page;
		}
		else {
			String n="worningcreatepopup";
			ModelAndView page=new ModelAndView("register.jsp");
			page.addObject("registerpopup",n);
			return page;
		}
	   		
	}
	
	@RequestMapping("login")
	public ModelAndView loginchack(loginDTO logindto) {
		
		if(serviceclass.loginchack(logindto)) {
			ModelAndView page=new ModelAndView("home.jsp");
			return page;
		}
		else {
//			System.out.print("data");
			String n="createpopup";
			ModelAndView page=new ModelAndView("login.jsp");
			page.addObject("loginpopup",n);
			return page;
		}
	}
	
	private String canceling_otp;
	
	@RequestMapping("cancelpageverify")
	public ModelAndView cancelingpageverify(cancelingpageDTO value) {
	
		List<passagerdetail> data=serviceclass.getpassagerdetail(value);
		if(data.isEmpty()) {
			String pop="emailnotvalid";
			ModelAndView page=new ModelAndView("canceling.jsp");
			page.addObject("popupdata", pop);			
			return page;
		}		
		else if(data.get(0).getEmail().equals(value.getEmail())) {
			
			this.canceling_otp=serviceclass.otpgeneration();
			emailservice.cancelingotp_send(value,canceling_otp);
			String pop="otpBox";
			ModelAndView page=new ModelAndView("canceling.jsp");
			page.addObject("data", pop);
			page.addObject("data1", value);
			return page;
			
		}
		else {
			String pop="emailnotvalid";
			ModelAndView page=new ModelAndView("canceling.jsp");
			page.addObject("popupdata", pop);
			return page;
			
		}
	}
	
	
	@RequestMapping("otpdataverify")
	public ModelAndView otpverify(cancelingotpDTO value) {
		
		String otpvalue[]=canceling_otp.split("");
		if(otpvalue[0].equals(value.getDigit1()) && otpvalue[1].equals(value.getDigit2()) && otpvalue[2].equals(value.getDigit3()) && otpvalue[3].equals(value.getDigit4())) {
			serviceclass.deleteticket(value.getBookingnumber());
			String data="success";
			ModelAndView page=new ModelAndView("canceling.jsp");
			page.addObject("data", data);
			return page;
		}
		else {
			String data="otpmissmathch";
			ModelAndView page=new ModelAndView("canceling.jsp");
			page.addObject("data", data);
			return page;
			
		}
		
	}
	
	
	
	@RequestMapping("businfo")
	public ModelAndView businfo(busaddressDTO busaddressdto) {
//		System.out.println("data");
		List<BUSINFO> data=(List<BUSINFO>)serviceclass.getbusinfo(busaddressdto);
		String date=busaddressdto.getDate();
		List<Integer> available=(List<Integer>)serviceclass.getavailable(date,data);
//		String busno=data.get(0).getBusno();
//		int count=serviceclass.getcount(date,busno);  data.get(0).getCapacity()-count
		ModelAndView s=new ModelAndView("buslistyouer.jsp");
		s.addObject("user", data);
		s.addObject("date",date);
		s.addObject("value",data.size());	
		s.addObject("count1", available);
		return s;
}
	
	
	@RequestMapping("youerbus")
	public ModelAndView youerbus(youerbuslistDTO youerbuslistdto ) {
		
	    String name="Sorry, the bus you are trying to book is currently fully booked. Please consider choosing an alternate bus or date.";
		if(youerbuslistdto.getAvailableseat()>0) {
			ModelAndView page=new ModelAndView("passagerdetail.jsp");
			page.addObject("page", youerbuslistdto);
			return page;
		}
		else {
			ModelAndView page=new ModelAndView("errorpage.jsp");
			page.addObject("page", name);
			return page;
		}
	}
	
	@RequestMapping("finall")
	public ModelAndView finall(passagerdetail data) {
//		System.out.println(data.getDate());
//		System.out.println(data.getAge());
		serviceclass.addfinall(data);
		emailservice.finallEmail(data);
		ModelAndView page=new ModelAndView("home.jsp");
		return page;
	}
	
	
}
