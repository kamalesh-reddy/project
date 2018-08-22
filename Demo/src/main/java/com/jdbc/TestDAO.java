package com.jdbc;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Course;
import com.model.Test;

@Repository
@Transactional
public class TestDAO {
	@Autowired
	private SessionFactory factory;
	
	
	public List<Test> getTest(){
		Session session  = factory.getCurrentSession();
		Query q = session.createQuery("from Test");
		List<Test> list =  q.list();
		return list;
	}
	
	public Test insertTest(Test test){
		
			Session session  = factory.getCurrentSession();
			session.save(test);
			return test;
		
	}
	public long findIdByCourseName(String courseName){
		Session session  = factory.getCurrentSession();
		
		//@SuppressWarnings("unchecked")
		List<Course> list =  session.createCriteria(Course.class).add(Restrictions.like("courseName", courseName)).list();
		
		if ((list != null) && (list.size() > 0)) {
			return 	list.get(0).getCourseId();
		}
		 return 0;
	}
	
	
	public void insertTestById(long courseId){
			Session session  = factory.getCurrentSession();	
			try{
					Test test = new Test();
					Course course = (Course) session.get(Course.class, courseId);
					test.setCourse(course);
					session.save(test);
	
							
				}catch(Exception e){
					e.printStackTrace();
			}
		}
		
}
