package com.product.home.DTO;

public class registerotpDTO {
	private String name;
	private String email;
	private String password;
	private String phonenumber;
	private String digit1;
	private String digit2;
	private String digit3;
	private String digit4;
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
	public String getDigit1() {
		return digit1;
	}
	public void setDigit1(String digit1) {
		this.digit1 = digit1;
	}
	public String getDigit2() {
		return digit2;
	}
	public void setDigit2(String digit2) {
		this.digit2 = digit2;
	}
	public String getDigit3() {
		return digit3;
	}
	public void setDigit3(String digit3) {
		this.digit3 = digit3;
	}
	public String getDigit4() {
		return digit4;
	}
	public void setDigit4(String digit4) {
		this.digit4 = digit4;
	}
	public registerotpDTO() {
		super();
	}
	public registerotpDTO(String name, String email, String password, String phonenumber, String digit1, String digit2,
			String digit3, String digit4) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phonenumber = phonenumber;
		this.digit1 = digit1;
		this.digit2 = digit2;
		this.digit3 = digit3;
		this.digit4 = digit4;
	}
	@Override
	public String toString() {
		return "registerotpDTO [name=" + name + ", email=" + email + ", password=" + password + ", phonenumber="
				+ phonenumber + ", digit1=" + digit1 + ", digit2=" + digit2 + ", digit3=" + digit3 + ", digit4="
				+ digit4 + "]";
	}
	
}
