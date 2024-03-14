package com.product.home.DTO;

public class userchackDTO {

	
	private String name;
	private String email;
	private String password;
	private String phonenumber;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public userchackDTO() {
		super();
	}
	public userchackDTO(String name, String email, String password, String phonenumber) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phonenumber = phonenumber;
	}
	@Override
	public String toString() {
		return "userchackDTO [name=" + name + ", email=" + email + ", password=" + password + ", phonenumber="
				+ phonenumber + "]";
	}
	
}
