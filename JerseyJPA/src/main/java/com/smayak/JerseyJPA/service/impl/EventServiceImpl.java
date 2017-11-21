package com.smayak.JerseyJPA.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smayak.JerseyJPA.dao.EventDAO;
import com.smayak.JerseyJPA.entity.Event;
import com.smayak.JerseyJPA.service.EventService;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDAO eventDAO;

	@Override
	public List<Event> getAllEvents() {
		// TODO Auto-generated method stub
		return eventDAO.getAllEvents();
	}

	@Override
	public List<Event> getAllEventsWithAttendees() {
		// TODO Auto-generated method stub
		return null;
	}

}
