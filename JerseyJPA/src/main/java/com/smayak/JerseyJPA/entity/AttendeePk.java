package com.smayak.JerseyJPA.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Embeddable
public class AttendeePk implements Serializable {

	private static final long serialVersionUID = 1L;

	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "userid", referencedColumnName = "userid")
	private User user;

	@JsonIgnore
	@JoinColumn(name = "eventid", referencedColumnName = "eventid")
	@ManyToOne
	private Event event;

	public User getUser() {
		return user;
	}

	public Event getEvent() {
		return event;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

}
