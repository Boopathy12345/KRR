package com.product.home.SERVICE;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.product.home.DTO.cancelingpageDTO;
import com.product.home.DTO.userchackDTO;
import com.product.home.ENTITY.passagerdetail;

@Component
public class EmailService {

	@Autowired
	private JavaMailSender mailSender;
	
	
	public void finallEmail(passagerdetail data) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom( "spring.email.from@gmail.com");
		message.setTo(data.getEmail());
		message.setText ("PASSENGER DETAILS : "+"\n\tNAME : "+data.getName()+"\n\tGENDER : "+data.getGender()+"\n\tAGE : "+data.getAge()+"\n\tPHONE NO : "+data.getPhonenumber()+"\n\tEMAIL ID : "+data.getEmail()+"\n\n\n TICKET INFO : "+"\n\tBUS NO : "+data.getBusno()+","+data.getBustype()+"\n\tDATE : "+data.getDate()+"\n\tBOOKING NUMBER : "+data.getBookingnumber()+"\n\tSEAT NUMBER : "+data.getSeatno()+"\n\tFROM ADDRESS : "+data.getFromaddress()+","+data.getFromtime()+"\n\tTO ADDRESS : "+data.getToaddress()+","+data.getTotime()+"\n\n CONTACT INFO :\n\tKRR MANAGER : C.CIBI \n\tCONTACT NUMBER : 7397509245 \n\tMAIL I'D : manager@krr.ac.in \n\n\n\n----THANK YOU FOR USING KRR BUS SERVICE----");
		message.setSubject ("KRR BUS SERVICE... \n BOOKING CONFIRMATION");
		mailSender.send(message);
		System.out.println("finall Mail Send...");
	}
	
	public void otpsend(userchackDTO user1,String otp) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom( "spring.email.from@gmail.com");
		message.setTo(user1.getEmail());
		message.setText (".......KRR SERVICE......."+"\n\n\n  USER DETAILS : "+"\n  NAME : "+user1.getName()+"\n  EMAIL ID : "+user1.getEmail()+"\n  One Time Password : "+otp+"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n----THANK YOU FOR USING KRR BUS SERVICE----");
		message.setSubject ("KRR BUS SERVICE... \n REGISTRATION OTP");
		mailSender.send(message);
		System.out.println("otp Mail Send...");
	}
	
	public void cancelingotp_send(cancelingpageDTO value,String otp) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom( "spring.email.from@gmail.com");
		message.setTo(value.getEmail());
		message.setText (".......KRR SERVICE......."+"\n\n\n  USER DETAILS : "+"\n  BOOKING NO : "+value.getBookingnumber()+"\n  EMAIL ID : "+value.getEmail()+"\n  One Time Password : "+otp+"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n----THANK YOU FOR USING KRR BUS SERVICE----");
		message.setSubject ("KRR BUS SERVICE... \n BOOKING CANCELING OTP");
		mailSender.send(message);
		System.out.println("otp Mail Send...");
	}
}
