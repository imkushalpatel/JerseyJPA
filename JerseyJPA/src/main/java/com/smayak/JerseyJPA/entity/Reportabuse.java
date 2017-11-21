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
 * The persistent class for the reportabuse database table.
 * 
 */
@Entity
@NamedQuery(name = "Reportabuse.findAll", query = "SELECT r FROM Reportabuse r")
public class Reportabuse implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int reportID;

	private int eventID;

	private String reportDescription;

	@Temporal(TemporalType.TIMESTAMP)
	private Date timeStamp;

	private int userID;

	public Reportabuse() {
	}

	public int getReportID() {
		return this.reportID;
	}

	public void setReportID(int reportID) {
		this.reportID = reportID;
	}

	public int getEventID() {
		return this.eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}

	public String getReportDescription() {
		return this.reportDescription;
	}

	public void setReportDescription(String reportDescription) {
		this.reportDescription = reportDescription;
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

}