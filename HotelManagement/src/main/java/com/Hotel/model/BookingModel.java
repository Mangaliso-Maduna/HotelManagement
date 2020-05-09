package com.Hotel.model;

import java.time.LocalDate;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

public class BookingModel {
	
	@NotEmpty(message = "name cannot be blank")
	public String fullName;
	
	public String email;

	@DateTimeFormat(pattern = "dd/MM/yyyy") 
	@NotNull
	public LocalDate checkDate;
	@Max(value = 5, message = "Cannot accept more than five Guests")
	@Min(value = 1, message = "min guests is 1")
	public int noOfGuests;
	@Max(value = 15, message = "Cannot Stay more than 25 conseccutive days")
	@Min(value = 1, message = "Days of stay must be atleast 1")
	public int noOfDays;
	
	
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
	public LocalDate getCheckDate() {
		return checkDate;
	}
	public void setCheckDate(LocalDate checkDate) {
		this.checkDate = checkDate;
	}
	public int getNoOfGuests() {
		return noOfGuests;
	}
	public void setNoOfGuests(int noOfGuests) {
		this.noOfGuests = noOfGuests;
	}
	public int getNoOfDays() {
		return noOfDays;
	}
	public void setNoOfDays(int noOfDays) {
		this.noOfDays = noOfDays;
	}
	@Override
	public String toString() {
		return "BookingModel [fullName=" + fullName + ", email=" + email + ", checkDate=" + checkDate + ", noOfGuests="
				+ noOfGuests + ", noOfDays=" + noOfDays + "]";
	}
	
	
}
