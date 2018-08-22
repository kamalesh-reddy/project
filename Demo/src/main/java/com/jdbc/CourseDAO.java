package com.jdbc;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Course;

@Repository
@Transactional
public class CourseDAO {
	@Autowired
	private SessionFactory factory;
	
	
	public List<Course> getCourse(){
		Session session  = factory.getCurrentSession();
		Query q = session.createQuery("from Course");
		List<Course> list =  q.list();
		return list;
	}
	
	public Course insertCourse(Course course){
		
			Session session  = factory.getCurrentSession();
			session.save(course);
			return course;
		
	}

}
