package com.product.home.DTO;

public class youerbuslistDTO {

	private String busno;
	private String date;
	private String fromaddress;
	private String toaddress;
	private String fromtime;
	private String totime;
	private String bustype;
	private int buscapacity; 
	private int availableseat;
	public String getBusno() {
		return busno;
	}
	public void setBusno(String busno) {
		this.busno = busno;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
	public int getBuscapacity() {
		return buscapacity;
	}
	public void setBuscapacity(int buscapacity) {
		this.buscapacity = buscapacity;
	}
	public int getAvailableseat() {
		return availableseat;
	}
	public void setAvailableseat(int availableseat) {
		this.availableseat = availableseat;
	}
	public youerbuslistDTO() {
		super();
	}
	public youerbuslistDTO(String busno, String date, String fromaddress, String toaddress, String fromtime,
			String totime, String bustype, int buscapacity, int availableseat) {
		super();
		this.busno = busno;
		this.date = date;
		this.fromaddress = fromaddress;
		this.toaddress = toaddress;
		this.fromtime = fromtime;
		this.totime = totime;
		this.bustype = bustype;
		this.buscapacity = buscapacity;
		this.availableseat = availableseat;
	}
	@Override
	public String toString() {
		return "youerbuslistDTO [busno=" + busno + ", date=" + date + ", fromaddress=" + fromaddress + ", toaddress="
				+ toaddress + ", fromtime=" + fromtime + ", totime=" + totime + ", bustype=" + bustype
				+ ", buscapacity=" + buscapacity + ", availableseat=" + availableseat + "]";
	}
	
	
	
}
