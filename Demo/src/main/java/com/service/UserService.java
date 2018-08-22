package com.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdbc.UserDAO;
import com.model.Course;
import com.model.Enroll;
import com.model.Question;
import com.model.User;
@Service
@Transactional
public class UserService {
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private SessionFactory factory;
	
	public List<Course> displayCourse(){
		List<Course> list = userDAO.getCourse();
		return list;
	}
	
	public void registrationLink(){
		userDAO.sendMail();
	}
	public String decode(String pass){
		return userDAO.getSHA256Hash(pass);
	}
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public List<User> displayUser(){
		List<User> list = userDAO.getUser();
		return list;
	}
	
	public boolean checkUserRole(User user){
		if(userDAO.checkRole(user.getUsername()).equals("ADMIN")){
			return true;
		}
	
		return false;
	}
	
	public void newinsertUser(User user){
		
		
		userDAO.insertUser(user);
	}
	
	public List<Question> fetchRandomQuestion(long courseId){
		return userDAO.fetchQuestion(courseId);
	}
	public List<Question> findQuestion(long courseId){
		return userDAO.findQuestionByCourseId(courseId);
	}
	
	public boolean computeResult(String option){
		return userDAO.checkAnswer(option);
	}
	public boolean checkUser(User user){
		
		if(userDAO.checkLogin(user.getUsername(),user.getUserPassword())){
			return true;
		}
		return false;
		
	}
	public long findCourseId(String courseName){
		return userDAO.findIdByCourseName(courseName);
	}
	public long findUserId(String userName){
		return userDAO.findIdByUserName(userName);
	}
	
	public void insertEnrollment(long courseId, long userId){
		userDAO.insertEnroll(courseId, userId);
	}
	public List<Enroll> checkEnrolledUser(String userName){
		 return userDAO.checkEnrollment(userName);
	}
	
	
	
}
