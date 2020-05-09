package com.Hotel.model;

import java.time.LocalDate;

import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

public class BookA_Room {
	@Size(min = 3, max = 15)
	private String fullName;
	@Email
	private String email;
	
	private LocalDate check_in;
	private int numberOfStay;
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public LocalDate getCheck_in() {
		return check_in;
	}
	public void setCheck_in(LocalDate check_in) {
		this.check_in = check_in;
	}
	public int getNumberOfStay() {
		return numberOfStay;
	}
	public void setNumberOfStay(int numberOfStay) {
		this.numberOfStay = numberOfStay;
	}
	
	
}
