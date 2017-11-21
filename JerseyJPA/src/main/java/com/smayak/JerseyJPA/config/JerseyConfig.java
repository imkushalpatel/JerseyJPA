package com.smayak.JerseyJPA.config;

import javax.ws.rs.ApplicationPath;

import org.glassfish.jersey.server.ResourceConfig;
import org.springframework.context.annotation.Configuration;

import com.smayak.JerseyJPA.endpoint.EventEndpoint;

@Configuration
@ApplicationPath("/api")
public class JerseyConfig extends ResourceConfig {

	public JerseyConfig() {
		register(EventEndpoint.class);
	}

}
