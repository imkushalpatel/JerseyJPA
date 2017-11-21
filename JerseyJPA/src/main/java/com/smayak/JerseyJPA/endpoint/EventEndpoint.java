package com.smayak.JerseyJPA.endpoint;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.smayak.JerseyJPA.service.EventService;

@Component
@Path("/events")
public class EventEndpoint {

	@Autowired
	private EventService eventService;

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getAllEvents() {
		return Response.ok(eventService.getAllEvents()).build();
	}

}
