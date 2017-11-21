package com.smayak.JerseyJPA.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.transaction.Transaction;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.smayak.JerseyJPA.dao.EventDAO;
import com.smayak.JerseyJPA.entity.Event;

@Transactional
@Repository
public class EventDAOImpl implements EventDAO {
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<Event> getAllEvents() {
		List<Event> events = entityManager.createQuery("from Event e").getResultList();
		return events;
	}

}
