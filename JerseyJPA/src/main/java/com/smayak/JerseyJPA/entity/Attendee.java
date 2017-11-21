package com.smayak.JerseyJPA.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * The persistent class for the attendees database table.
 * 
 */
// @Embeddable
@Entity
@Table(name = "attendees")
public class Attendee implements Serializable {

	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private AttendeePk attendeePk;

	@Column(name = "approved")
	private int approved;

	// @Column(name = "eventid")
	// private int eventID;

	@Column(name = "timestamp")
	@Temporal(TemporalType.TIMESTAMP)
	private Date timeStamp;

	// @Column(name = "userid")
	// private int userID;

	public Attendee() {
	}

	public int getApproved() {
		return this.approved;
	}

	public void setApproved(int approved) {
		this.approved = approved;
	}

	// public int getEventID() {
	// return this.eventID;
	// }
	//
	// public void setEventID(int eventID) {
	// this.eventID = eventID;
	// }

	public Date getTimeStamp() {
		return this.timeStamp;
	}

	public void setTimeStamp(Date timeStamp) {
		this.timeStamp = timeStamp;
	}

	// public int getUserID() {
	// return this.userID;
	// }
	//
	// public void setUserID(int userID) {
	// this.userID = userID;
	// }

	public AttendeePk getAttendeePk() {
		return attendeePk;
	}

	public void setAttendeePk(AttendeePk attendeePk) {
		this.attendeePk = attendeePk;
	}

}