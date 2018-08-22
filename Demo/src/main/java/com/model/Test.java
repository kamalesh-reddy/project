package com.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the TESTS database table.
 * 
 */
@Entity
@Table(name="TESTS")
@NamedQuery(name="Test.findAll", query="SELECT t FROM Test t")
public class Test implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="TEST_ID")
	private long testId;

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="COURSE_ID")
	private Course course;

	public Test() {
	}

	public long getTestId() {
		return this.testId;
	}

	public void setTestId(long testId) {
		this.testId = testId;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

}