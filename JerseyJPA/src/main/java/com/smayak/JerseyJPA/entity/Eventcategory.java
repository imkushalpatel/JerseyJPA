package com.smayak.JerseyJPA.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the eventcategory database table.
 * 
 */
@Entity
@Table(name = "eventcategory")
@NamedQuery(name = "Eventcategory.findAll", query = "SELECT e FROM Eventcategory e")
public class Eventcategory implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int eventCategoryID;

	private String categoryDescription;

	private String categoryName;

	private String categoryPoster;

	public Eventcategory() {
	}

	public int getEventCategoryID() {
		return this.eventCategoryID;
	}

	public void setEventCategoryID(int eventCategoryID) {
		this.eventCategoryID = eventCategoryID;
	}

	public String getCategoryDescription() {
		return this.categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryPoster() {
		return this.categoryPoster;
	}

	public void setCategoryPoster(String categoryPoster) {
		this.categoryPoster = categoryPoster;
	}

}