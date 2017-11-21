package com.smayak.JerseyJPA.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * The persistent class for the wishlist database table.
 * 
 */
@Entity
@NamedQuery(name = "Wishlist.findAll", query = "SELECT w FROM Wishlist w")
public class Wishlist implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int wishID;

	private int eventID;

	@Temporal(TemporalType.TIMESTAMP)
	private Date timeStamp;

	private int userID;

	private String wishName;

	public Wishlist() {
	}

	public int getWishID() {
		return this.wishID;
	}

	public void setWishID(int wishID) {
		this.wishID = wishID;
	}

	public int getEventID() {
		return this.eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}

	public Date getTimeStamp() {
		return this.timeStamp;
	}

	public void setTimeStamp(Date timeStamp) {
		this.timeStamp = timeStamp;
	}

	public int getUserID() {
		return this.userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getWishName() {
		return this.wishName;
	}

	public void setWishName(String wishName) {
		this.wishName = wishName;
	}

}