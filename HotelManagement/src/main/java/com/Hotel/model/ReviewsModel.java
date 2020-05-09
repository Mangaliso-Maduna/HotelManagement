package com.Hotel.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "reviews")
public class ReviewsModel {

	@Column
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userid;
	@Column
	private String browserused;
	@Column
	private String deviceused;
	@Column
	private String response;
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getBrowserused() {
		return browserused;
	}
	public void setBrowserused(String browserused) {
		this.browserused = browserused;
	}
	public String getDeviceused() {
		return deviceused;
	}
	public void setDeviceused(String deviceused) {
		this.deviceused = deviceused;
	}
	public String getResponse() {
		return response;
	}
	public void setResponse(String response) {
		this.response = response;
	}
	@Override
	public String toString() {
		return "ReviewsModel [userid=" + userid + ", browserused=" + browserused + ", deviceused=" + deviceused
				+ ", response=" + response + "]";
	}
	
	
}
