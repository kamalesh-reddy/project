package com.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdbc.TestDAO;
import com.model.Test;
import com.model.User;
@Service
@Transactional
public class TestService {
	
	@Autowired
	private TestDAO testDAO;
	@Autowired
	private SessionFactory factory;
	
	
	public void setTestDAO(TestDAO testDAO) {
		this.testDAO = testDAO;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public List<Test> displayTest(){
		List<Test> list = testDAO.getTest();
		return list;
	}
	
	public void newinsertTest(long id){
		testDAO.insertTestById(id);
		
	}
	public long findCourseId(String courseName){
		return testDAO.findIdByCourseName(courseName);
	}
	
}
