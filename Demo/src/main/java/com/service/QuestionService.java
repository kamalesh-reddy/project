package com.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdbc.QuestionDAO;
import com.model.Question;
@Service
@Transactional
public class QuestionService {
	
	@Autowired
	private QuestionDAO questionDAO;
	@Autowired
	private SessionFactory factory;
	
	
	public void setCourseDAO(QuestionDAO questionDAO) {
		this.questionDAO = questionDAO;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public List<Question> displayQuestion(){
		List<Question> list = questionDAO.getQuestion();
		return list;
	}
	
	public void newinsertQuestion(long id){
		questionDAO.insertQuestionById(id);
		
	}
	public long findCourseId(String courseName){
		return questionDAO.findIdByCourseName(courseName);
	}
}
