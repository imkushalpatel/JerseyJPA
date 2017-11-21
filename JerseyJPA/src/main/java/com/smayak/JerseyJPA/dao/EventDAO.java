package com.smayak.JerseyJPA.dao;

import java.util.List;

import com.smayak.JerseyJPA.entity.Event;

public interface EventDAO {
	List<Event> getAllEvents();

}
