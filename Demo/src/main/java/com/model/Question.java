package com.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the QUESTIONS database table.
 * 
 */
@Entity
@Table(name="QUESTIONS")
@NamedQuery(name="Question.findAll", query="SELECT q FROM Question q")
public class Question implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="SequenceIdGenerator", sequenceName = "QUES_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SequenceIdGenerator" )
	@Column(name="QUESTION_ID")
	private long questionId;

	@Column(name="QUESTION_ANSWER")
	private String questionAnswer;

	@Column(name="QUESTION_DESCRIPTION")
	private String questionDescription;

	@Column(name="QUESTION_OPTIONA")
	private String questionOptiona;

	@Column(name="QUESTION_OPTIONB")
	private String questionOptionb;

	@Column(name="QUESTION_OPTIONC")
	private String questionOptionc;

	@Column(name="QUESTION_OPTIOND")
	private String questionOptiond;

	@Column(name="QUESTION_STATUS")
	private String questionStatus;

	private String markedAnswer;
	
	public String getMarkedAnswer() {
		return markedAnswer;
	}

	public void setMarkedAnswer(String markedAnswer) {
		this.markedAnswer = markedAnswer;
	}

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="COURSE_ID")
	private Course course;

	public Question() {
	}

	public long getQuestionId() {
		return this.questionId;
	}

	public void setQuestionId(long questionId) {
		this.questionId = questionId;
	}

	public String getQuestionAnswer() {
		return this.questionAnswer;
	}

	public void setQuestionAnswer(String questionAnswer) {
		this.questionAnswer = questionAnswer;
	}

	public String getQuestionDescription() {
		return this.questionDescription;
	}

	public void setQuestionDescription(String questionDescription) {
		this.questionDescription = questionDescription;
	}

	public String getQuestionOptiona() {
		return this.questionOptiona;
	}

	public void setQuestionOptiona(String questionOptiona) {
		this.questionOptiona = questionOptiona;
	}

	public String getQuestionOptionb() {
		return this.questionOptionb;
	}

	public void setQuestionOptionb(String questionOptionb) {
		this.questionOptionb = questionOptionb;
	}

	public String getQuestionOptionc() {
		return this.questionOptionc;
	}

	public void setQuestionOptionc(String questionOptionc) {
		this.questionOptionc = questionOptionc;
	}

	public String getQuestionOptiond() {
		return this.questionOptiond;
	}

	public void setQuestionOptiond(String questionOptiond) {
		this.questionOptiond = questionOptiond;
	}

	public String getQuestionStatus() {
		return this.questionStatus;
	}

	public void setQuestionStatus(String questionStatus) {
		this.questionStatus = questionStatus;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

}