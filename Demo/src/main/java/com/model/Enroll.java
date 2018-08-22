package com.model;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the ENROLL database table.
 * 
 */
@Entity
@NamedQuery(name="Enroll.findAll", query="SELECT e FROM Enroll e")
public class Enroll implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="SequenceIdGenerator", sequenceName = "RESULT_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SequenceIdGenerator" )
	@Column(name="ENROLL_ID")
	private long enrollId;

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="COURSE_ID")
	private Course course;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="USER_ID")
	private User user;

	public Enroll() {
	}

	public long getEnrollId() {
		return this.enrollId;
	}

	public void setEnrollId(long enrollId) {
		this.enrollId = enrollId;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}