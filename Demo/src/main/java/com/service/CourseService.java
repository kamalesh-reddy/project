package com.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdbc.CourseDAO;
import com.model.Course;
import com.model.User;
@Service
@Transactional
public class CourseService {
	
	@Autowired
	private CourseDAO courseDAO;
	@Autowired
	private SessionFactory factory;
	
	
	public void setCourseDAO(CourseDAO courseDAO) {
		this.courseDAO = courseDAO;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public List<Course> displayCourse(){
		List<Course> list = courseDAO.getCourse();
		return list;
	}
	
	public void newinsertCourse(Course course){
		
		
		courseDAO.insertCourse(course);
	}
	
}
