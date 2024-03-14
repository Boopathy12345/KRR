package com.product.home.ENTITY;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class passagerdetail {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingnumber;
	
	@Column
	private String busno;
	
	@Column
	private String date;
	
	@Column
	private String name;
	
	@Column
	private String age;
	
	@Column
	private String email;
	
	@Column
	private String gender;
	
	@Column
	private String fromaddress;
	
	@Column
	private String toaddress;
	
	@Column
	private String fromtime;
	
	@Column
	private String totime;
	
	@Column
	private String bustype;
	
	@Column
	private String phonenumber;
	
	@Column
	private int seatno;
	
	
    
	

	public int getBookingnumber() {
		return bookingnumber;
	}

	public void setBookingnumber(int bookingnumber) {
		this.bookingnumber = bookingnumber;
	}

	public String getBusno() {
		return busno;
	}

	public void setBusno(String busno) {
		this.busno = busno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getFromaddress() {
		return fromaddress;
	}

	public void setFromaddress(String fromaddress) {
		this.fromaddress = fromaddress;
	}

	public String getToaddress() {
		return toaddress;
	}

	public void setToaddress(String toaddress) {
		this.toaddress = toaddress;
	}

	public String getFromtime() {
		return fromtime;
	}

	public void setFromtime(String fromtime) {
		this.fromtime = fromtime;
	}

	public String getTotime() {
		return totime;
	}

	public void setTotime(String totime) {
		this.totime = totime;
	}

	public String getBustype() {
		return bustype;
	}

	public void setBustype(String bustype) {
		this.bustype = bustype;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	
	

	public int getSeatno() {
		return seatno;
	}

	public void setSeatno(int seatno) {
		this.seatno = seatno;
	}

	public passagerdetail() {
		super();
	}
	
	

	

	

	public passagerdetail(String busno, String date, String name, String age, String email, String gender,
			String fromaddress, String toaddress, String fromtime, String totime, String bustype, String phonenumber,
			int seatno) {
		super();
		this.busno = busno;
		this.date = date;
		this.name = name;
		this.age = age;
		this.email = email;
		this.gender = gender;
		this.fromaddress = fromaddress;
		this.toaddress = toaddress;
		this.fromtime = fromtime;
		this.totime = totime;
		this.bustype = bustype;
		this.phonenumber = phonenumber;
		this.seatno = seatno;
	}

	@Override
	public String toString() {
		return "passagerdetail [bookingnumber=" + bookingnumber + ", busno=" + busno + ", date=" + date + ", name="
				+ name + ", age=" + age + ", email=" + email + ", gender=" + gender + ", fromaddress=" + fromaddress
				+ ", toaddress=" + toaddress + ", fromtime=" + fromtime + ", totime=" + totime + ", bustype=" + bustype
				+ ", phonenumber=" + phonenumber + ", seatno=" + seatno + "]";
	}

	
	
}
