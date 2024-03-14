package com.product.home.DTO;

public class cancelingpageDTO {
	
	
	private int bookingnumber;
	private String email;
	
	
	
	public int getBookingnumber() {
		return bookingnumber;
	}
	public void setBookingnumber(int bookingnumber) {
		this.bookingnumber = bookingnumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public cancelingpageDTO() {
		super();
	}
	public cancelingpageDTO(int bookingnumber, String email) {
		super();
		this.bookingnumber = bookingnumber;
		this.email = email;
	}
	@Override
	public String toString() {
		return "cancelingpageDTO [bookingnumber=" + bookingnumber + ", email=" + email + "]";
	}
	
	
	
	
	

}
