package com.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the USERS database table.
 * 
 */
@Entity
@Table(name="USERS")
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="SequenceIdGenerator", sequenceName = "USER_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SequenceIdGenerator" )
	@Column(name="USER_ID")
	private long userId;

	@Column(name="USER_EMAIL")
	private String userEmail;

	@Column(name="USER_FNAME")
	private String userFname;

	@Column(name="USER_MOBILE_NO")
	private BigDecimal userMobileNo;

	@Column(name="USER_PASSWORD")
	private String userPassword;

	@Column(name="USER_ROLE")
	private String userRole;

	@Column(name="USER_STATUS")
	private String userStatus;

	private String username;

	//bi-directional many-to-one association to Enroll
	@OneToMany(mappedBy="user")
	private List<Enroll> enrolls;

	//bi-directional many-to-one association to Result
	@OneToMany(mappedBy="user")
	private List<Result> results;

	public User() {
	}

	public long getUserId() {
		return this.userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserFname() {
		return this.userFname;
	}

	public void setUserFname(String userFname) {
		this.userFname = userFname;
	}

	public BigDecimal getUserMobileNo() {
		return this.userMobileNo;
	}

	public void setUserMobileNo(BigDecimal userMobileNo) {
		this.userMobileNo = userMobileNo;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserRole() {
		return this.userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public String getUserStatus() {
		return this.userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<Enroll> getEnrolls() {
		return this.enrolls;
	}

	public void setEnrolls(List<Enroll> enrolls) {
		this.enrolls = enrolls;
	}

	public Enroll addEnroll(Enroll enroll) {
		getEnrolls().add(enroll);
		enroll.setUser(this);

		return enroll;
	}

	public Enroll removeEnroll(Enroll enroll) {
		getEnrolls().remove(enroll);
		enroll.setUser(null);

		return enroll;
	}

	public List<Result> getResults() {
		return this.results;
	}

	public void setResults(List<Result> results) {
		this.results = results;
	}

	public Result addResult(Result result) {
		getResults().add(result);
		result.setUser(this);

		return result;
	}

	public Result removeResult(Result result) {
		getResults().remove(result);
		result.setUser(null);

		return result;
	}

}