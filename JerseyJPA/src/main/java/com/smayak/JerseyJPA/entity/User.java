package com.smayak.JerseyJPA.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@Table(name = "user")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "userid")
	private int userID;

	@Column(name = "email")
	private String email;

	@Column(name = "fcmtoken")
	private String fcmtoken;

	@Column(name = "firstname")
	private String firstName;

	@Column(name = "isadminnotify")
	private byte isAdminNotify;

	@Column(name = "lastname")
	private String lastName;

	@Column(name = "logintype")
	private String loginType;

	@Column(name = "mobileno")
	private String mobileNo;

	@Column(name = "notistatus")
	private int notiStatus;

	@Column(name = "password")
	private String password;

	@Column(name = "status")
	private int status;

	@Column(name = "timestamp")
	@Temporal(TemporalType.TIMESTAMP)
	private Date timeStamp;

	@Column(name = "usercity")
	private String userCity;

	@Column(name = "userphoto")
	private String userPhoto;

	@Column(name = "usertypeid")
	private int userTypeID;

	@JsonIgnore
	@OneToMany(mappedBy = "attendeePk.user")
	private List<Attendee> attendees;

	public User() {
	}

	public int getUserID() {
		return this.userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFcmtoken() {
		return this.fcmtoken;
	}

	public void setFcmtoken(String fcmtoken) {
		this.fcmtoken = fcmtoken;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public byte getIsAdminNotify() {
		return this.isAdminNotify;
	}

	public void setIsAdminNotify(byte isAdminNotify) {
		this.isAdminNotify = isAdminNotify;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getLoginType() {
		return this.loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

	public String getMobileNo() {
		return this.mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public int getNotiStatus() {
		return this.notiStatus;
	}

	public void setNotiStatus(int notiStatus) {
		this.notiStatus = notiStatus;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getStatus() {
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getTimeStamp() {
		return this.timeStamp;
	}

	public void setTimeStamp(Date timeStamp) {
		this.timeStamp = timeStamp;
	}

	public String getUserCity() {
		return this.userCity;
	}

	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}

	public String getUserPhoto() {
		return this.userPhoto;
	}

	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}

	public int getUserTypeID() {
		return this.userTypeID;
	}

	public void setUserTypeID(int userTypeID) {
		this.userTypeID = userTypeID;
	}

	public List<Attendee> getAttendees() {
		return attendees;
	}

	public void setAttendees(List<Attendee> attendees) {
		this.attendees = attendees;
	}

}