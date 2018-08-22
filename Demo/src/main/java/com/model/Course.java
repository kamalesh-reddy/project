package com.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the COURSE database table.
 * 
 */
@Entity
@NamedQuery(name="Course.findAll", query="SELECT c FROM Course c")
public class Course implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="SequenceIdGenerator", sequenceName = "COURSE_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SequenceIdGenerator" )
	@Column(name="COURSE_ID")
	private long courseId;

	@Column(name="COURSE_DESCRIPTION")
	private String courseDescription;

	@Column(name="COURSE_NAME")
	private String courseName;

	@Column(name="COURSE_NO_QUESTIONS")
	private BigDecimal courseNoQuestions;

	@Column(name="COURSE_PASSING_SCORE")
	private BigDecimal coursePassingScore;

	//bi-directional many-to-one association to Enroll
	@OneToMany(mappedBy="course")
	private List<Enroll> enrolls;

	//bi-directional many-to-one association to Question
	@OneToMany(mappedBy="course")
	private List<Question> questions;

	//bi-directional many-to-one association to Result
	@OneToMany(mappedBy="course")
	private List<Result> results;

	//bi-directional many-to-one association to Test
	@OneToMany(mappedBy="course")
	private List<Test> tests;

	public Course() {
	}

	public long getCourseId() {
		return this.courseId;
	}

	public void setCourseId(long courseId) {
		this.courseId = courseId;
	}

	public String getCourseDescription() {
		return this.courseDescription;
	}

	public void setCourseDescription(String courseDescription) {
		this.courseDescription = courseDescription;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public BigDecimal getCourseNoQuestions() {
		return this.courseNoQuestions;
	}

	public void setCourseNoQuestions(BigDecimal courseNoQuestions) {
		this.courseNoQuestions = courseNoQuestions;
	}

	public BigDecimal getCoursePassingScore() {
		return this.coursePassingScore;
	}

	public void setCoursePassingScore(BigDecimal coursePassingScore) {
		this.coursePassingScore = coursePassingScore;
	}

	public List<Enroll> getEnrolls() {
		return this.enrolls;
	}

	public void setEnrolls(List<Enroll> enrolls) {
		this.enrolls = enrolls;
	}

	public Enroll addEnroll(Enroll enroll) {
		getEnrolls().add(enroll);
		enroll.setCourse(this);

		return enroll;
	}

	public Enroll removeEnroll(Enroll enroll) {
		getEnrolls().remove(enroll);
		enroll.setCourse(null);

		return enroll;
	}

	public List<Question> getQuestions() {
		return this.questions;
	}

	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}

	public Question addQuestion(Question question) {
		getQuestions().add(question);
		question.setCourse(this);

		return question;
	}

	public Question removeQuestion(Question question) {
		getQuestions().remove(question);
		question.setCourse(null);

		return question;
	}

	public List<Result> getResults() {
		return this.results;
	}

	public void setResults(List<Result> results) {
		this.results = results;
	}

	public Result addResult(Result result) {
		getResults().add(result);
		result.setCourse(this);

		return result;
	}

	public Result removeResult(Result result) {
		getResults().remove(result);
		result.setCourse(null);

		return result;
	}

	public List<Test> getTests() {
		return this.tests;
	}

	public void setTests(List<Test> tests) {
		this.tests = tests;
	}

	public Test addTest(Test test) {
		getTests().add(test);
		test.setCourse(this);

		return test;
	}

	public Test removeTest(Test test) {
		getTests().remove(test);
		test.setCourse(null);

		return test;
	}

}