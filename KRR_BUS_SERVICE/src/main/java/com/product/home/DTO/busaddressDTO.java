package com.product.home.DTO;

public class busaddressDTO {

	
	private String fromaddress;
	private String toaddress;
	private String date;
	
	public busaddressDTO() {
		super();
	}
	public busaddressDTO(String fromaddress, String toaddress,String date) {
		super();
		this.fromaddress = fromaddress;
		this.toaddress = toaddress;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "busaddressDTO [fromaddress=" + fromaddress + ", toaddress=" + toaddress + ", date=" + date + "]";
	}
	
}
