package com.smayak.JerseyJPA.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the properties database table.
 * 
 */
@Entity
@Table(name = "properties")
@NamedQuery(name = "Property.findAll", query = "SELECT p FROM Property p")
public class Property implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idProperties;

	private String propertiesName;

	private String propertiesValue;

	public Property() {
	}

	public int getIdProperties() {
		return this.idProperties;
	}

	public void setIdProperties(int idProperties) {
		this.idProperties = idProperties;
	}

	public String getPropertiesName() {
		return this.propertiesName;
	}

	public void setPropertiesName(String propertiesName) {
		this.propertiesName = propertiesName;
	}

	public String getPropertiesValue() {
		return this.propertiesValue;
	}

	public void setPropertiesValue(String propertiesValue) {
		this.propertiesValue = propertiesValue;
	}

}