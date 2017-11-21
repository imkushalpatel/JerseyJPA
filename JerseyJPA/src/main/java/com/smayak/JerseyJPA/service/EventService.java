package com.smayak.JerseyJPA.service;

import java.util.List;

import com.smayak.JerseyJPA.entity.Event;

public interface EventService {
	List<Event> getAllEvents();
	List<Event> getAllEventsWithAttendees(); 
}
