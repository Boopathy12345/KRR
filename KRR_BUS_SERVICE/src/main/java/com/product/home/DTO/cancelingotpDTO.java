package com.product.home.DTO;

public class cancelingotpDTO {
	private int bookingnumber;
	private String email;
	private String digit1;
	private String digit2;
	private String digit3;
	private String digit4;
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
	public cancelingotpDTO() {
		super();
	}
	public cancelingotpDTO(int bookingnumber, String email, String digit1, String digit2, String digit3,
			String digit4) {
		super();
		this.bookingnumber = bookingnumber;
		this.email = email;
		this.digit1 = digit1;
		this.digit2 = digit2;
		this.digit3 = digit3;
		this.digit4 = digit4;
	}
	@Override
	public String toString() {
		return "cancelingotpDTO [bookingnumber=" + bookingnumber + ", email=" + email + ", digit1=" + digit1
				+ ", digit2=" + digit2 + ", digit3=" + digit3 + ", digit4=" + digit4 + "]";
	}
	
	
	
	

}
