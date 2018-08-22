package com.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the RESULTS database table.
 * 
 */
@Entity
@Table(name="RESULTS")
@NamedQuery(name="Result.findAll", query="SELECT r FROM Result r")
public class Result implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="SequenceIdGenerator", sequenceName = "RESULT_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SequenceIdGenerator" )
	@Column(name="RESULT_ID")
	private long resultId;

	@Temporal(TemporalType.DATE)
	@Column(name="RESULT_DATE")
	private Date resultDate;

	@Column(name="RESULT_SCORE")
	private BigDecimal resultScore;

	@Column(name="RESULT_STATUS")
	private String resultStatus;

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="COURSE_ID")
	private Course course;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="USER_ID")
	private User user;

	public Result() {
	}

	public long getResultId() {
		return this.resultId;
	}

	public void setResultId(long resultId) {
		this.resultId = resultId;
	}

	public Date getResultDate() {
		return this.resultDate;
	}

	public void setResultDate(Date resultDate) {
		this.resultDate = resultDate;
	}

	public BigDecimal getResultScore() {
		return this.resultScore;
	}

	public void setResultScore(BigDecimal resultScore) {
		this.resultScore = resultScore;
	}

	public String getResultStatus() {
		return this.resultStatus;
	}

	public void setResultStatus(String resultStatus) {
		this.resultStatus = resultStatus;
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