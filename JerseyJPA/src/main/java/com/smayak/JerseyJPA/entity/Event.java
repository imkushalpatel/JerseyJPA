package com.smayak.JerseyJPA.entity;

import java.io.Serializable;
import java.sql.Time;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * The persistent class for the event database table.
 * 
 */
@Entity
@Table(name = "event")
public class Event implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "eventid")
	private int eventID;

	@Column(name = "createdby")
	private String createdBy;

	@Column(name = "eventcategoryid")
	private int eventCategoryID;

	@Column(name = "eventcity")
	private String eventCity;

	@Column(name = "eventcode")
	private String eventCode;

	@Column(name = "eventdate")
	@Temporal(TemporalType.DATE)
	private Date eventDate;

	@Lob
	@Column(name = "eventdescription")
	private String eventDescription;

	@Column(name = "eventenddate")
	@Temporal(TemporalType.DATE)
	private Date eventenddate;

	@Column(name = "eventendtime")
	private Time eventendtime;

	@Column(name = "eventname")
	private String eventName;

	@Column(name = "eventposter")
	private String eventPoster;

	@Column(name = "eventtime")
	private Time eventTime;

	@Column(name = "eventtype")
	private int eventType;

	@Column(name = "eventvenue")
	private String eventVenue;

	@Column(name = "status")
	private int status;

	@Column(name = "timestamp")
	@Temporal(TemporalType.TIMESTAMP)
	private Date timeStamp;

	@Column(name = "userid")
	private int userID;

	@Column(name = "visitcounter")
	private int visitCounter;

	@JsonIgnore
	@OneToMany(mappedBy = "attendeePk.event")
	private List<Attendee> attendees;

	public Event() {
	}

	public int getEventID() {
		return this.eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}

	public String getCreatedBy() {
		return this.createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public int getEventCategoryID() {
		return this.eventCategoryID;
	}

	public void setEventCategoryID(int eventCategoryID) {
		this.eventCategoryID = eventCategoryID;
	}

	public String getEventCity() {
		return this.eventCity;
	}

	public void setEventCity(String eventCity) {
		this.eventCity = eventCity;
	}

	public String getEventCode() {
		return this.eventCode;
	}

	public void setEventCode(String eventCode) {
		this.eventCode = eventCode;
	}

	public Date getEventDate() {
		return this.eventDate;
	}

	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}

	public String getEventDescription() {
		return this.eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public Date getEventenddate() {
		return this.eventenddate;
	}

	public void setEventenddate(Date eventenddate) {
		this.eventenddate = eventenddate;
	}

	public Time getEventendtime() {
		return this.eventendtime;
	}

	public void setEventendtime(Time eventendtime) {
		this.eventendtime = eventendtime;
	}

	public String getEventName() {
		return this.eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventPoster() {
		return this.eventPoster;
	}

	public void setEventPoster(String eventPoster) {
		this.eventPoster = eventPoster;
	}

	public Time getEventTime() {
		return this.eventTime;
	}

	public void setEventTime(Time eventTime) {
		this.eventTime = eventTime;
	}

	public int getEventType() {
		return this.eventType;
	}

	public void setEventType(int eventType) {
		this.eventType = eventType;
	}

	public String getEventVenue() {
		return this.eventVenue;
	}

	public void setEventVenue(String eventVenue) {
		this.eventVenue = eventVenue;
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

	public int getUserID() {
		return this.userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getVisitCounter() {
		return this.visitCounter;
	}

	public void setVisitCounter(int visitCounter) {
		this.visitCounter = visitCounter;
	}

	public List<Attendee> getAttendees() {
		return attendees;
	}

	public void setAttendees(List<Attendee> attendees) {
		this.attendees = attendees;
	}

}