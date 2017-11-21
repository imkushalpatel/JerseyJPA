package com.smayak.JerseyJPA.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

/**
 * The persistent class for the usernotification database table.
 * 
 */
@Entity
@NamedQuery(name = "Usernotification.findAll", query = "SELECT u FROM Usernotification u")
public class Usernotification implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userNotificationId;

	private int eventCategoryID;

	private int status;

	private int userId;

	public Usernotification() {
	}

	public int getUserNotificationId() {
		return this.userNotificationId;
	}

	public void setUserNotificationId(int userNotificationId) {
		this.userNotificationId = userNotificationId;
	}

	public int getEventCategoryID() {
		return this.eventCategoryID;
	}

	public void setEventCategoryID(int eventCategoryID) {
		this.eventCategoryID = eventCategoryID;
	}

	public int getStatus() {
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}