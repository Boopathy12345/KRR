package com.product.home.ENTITY;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class BUSINFO {

	@Id
	private String busno;
	
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
	private int capacity;
	
	@Column
	private String duration;
	
	@Column
	private String amount;

	public BUSINFO() {
		super();
	}

	

	public BUSINFO(String busno, String fromaddress, String toaddress, String fromtime, String totime, String bustype,
			int capacity, String duration, String amount) {
		super();
		this.busno = busno;
		this.fromaddress = fromaddress;
		this.toaddress = toaddress;
		this.fromtime = fromtime;
		this.totime = totime;
		this.bustype = bustype;
		this.capacity = capacity;
		this.duration = duration;
		this.amount = amount;
	}



	public String getBusno() {
		return busno;
	}



	public void setBusno(String busno) {
		this.busno = busno;
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



	public int getCapacity() {
		return capacity;
	}



	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}



	public String getDuration() {
		return duration;
	}



	public void setDuration(String duration) {
		this.duration = duration;
	}

	
	
	public String getAmount() {
		return amount;
	}



	public void setAmount(String amount) {
		this.amount = amount;
	}



	@Override
	public String toString() {
		return "BUSINFO [busno=" + busno + ", fromaddress=" + fromaddress + ", toaddress=" + toaddress + ", fromtime="
				+ fromtime + ", totime=" + totime + ", bustype=" + bustype + ", capacity=" + capacity + ", duration="
				+ duration + ", amount=" + amount + "]";
	}
	
	
	
}
