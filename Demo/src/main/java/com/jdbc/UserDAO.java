package com.jdbc;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import javax.xml.bind.DatatypeConverter;
import com.model.Course;
import com.model.Email;
import com.model.Enroll;
import com.model.Question;
import com.model.User;

@Repository
@Transactional
public class UserDAO {
	@Autowired
	private SessionFactory factory;
	
	
    public String getSHA256Hash(String data) 
    {
        String result = null;
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(data.getBytes("UTF-8"));
            return bytesToHex(hash); 
        }catch(Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }
    
    private String  bytesToHex(byte[] hash) {
        return DatatypeConverter.printHexBinary(hash);
    }
 
	
	
	public List<Course> getCourse(){
		Session session  = factory.getCurrentSession();
		Query q = session.createQuery("from Course");
		List<Course> list =  q.list();
		return list;
	}
	public void sendMail(){
		Session session  = factory.getCurrentSession();
		Email email =new Email();
		email.emailSend();
	}
	public User getUser(String userName){
		Session session  = factory.getCurrentSession();
		Query query=session.createQuery("from User as u where u.username ="+userName);
		List<User > list = query.list();
		return list.get(0);
	}
	
	public void insertEnroll(long courseId, long userId){
		Session session  = factory.getCurrentSession();
		Course course = (Course) session.get(Course.class, courseId);
		User user = (User) session.get(User.class, userId);
		
		Enroll enroll = new Enroll();
		
		enroll.setCourse(course);
		enroll.setUser(user);
		
		session.save(enroll);
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
	
	public boolean checkAnswer(String option){
		Session session  = factory.getCurrentSession();
		List<Question> list =  session.createCriteria(Question.class).add(Restrictions.like("questionAnswer", option)).list();
		if ((list != null) && (list.size() > 0)) {
			return 	true;
		}
		 return false;
	}
	
	
	public List<Question> fetchQuestion(long courseId){
		Session session  = factory.getCurrentSession();
		Query query=session.createQuery("from Question as q where q.course ="+courseId);
		List<Question > list = query.list();
		
		Random r = new Random();
    	
    	List<Question> tempList= new ArrayList<Question>();
    	for(int i=0;i<10;i++){
    		tempList.add(list.get(r.nextInt(list.size())));
    	}
    	return tempList;
	}
	
	public List<Question> findQuestionByCourseId(long courseId){
		Session session  = factory.getCurrentSession();
		Query query=session.createQuery("from Question as q where q.course ="+courseId);
		List<Question > list = query.list();
		return list;
	}
	
	
	public long findIdByUserName(String userName){
		Session session  = factory.getCurrentSession();
		
		//@SuppressWarnings("unchecked")
		List<User> list =  session.createCriteria(User.class).add(Restrictions.like("username", userName)).list();
		
		if ((list != null) && (list.size() > 0)) {
			return 	list.get(0).getUserId();
		}
		 return 0;
	}
	
	
	public List<Enroll> checkEnrollment(String userName){
		Session session  = factory.getCurrentSession();
		long id=findIdByUserName(userName);
		Query query=session.createQuery("from Enroll as e where e.user ="+id);
		List<Enroll > li=query.list();
		return li;
	}
	
	public String checkRole(String userName){
		
		Session session  = factory.getCurrentSession();
		
		//@SuppressWarnings("unchecked")
		List<User> list =  session.createCriteria(User.class).add(Restrictions.like("username", userName))
							.add(Restrictions.like("userRole", "ADMIN"))
							.list();

		
		if ((list != null) && (list.size() > 0)) {
			return "ADMIN";
		}
		 return "NUSER";
	}
	
	
	
	public List<User> getUser(){
		Session session  = factory.getCurrentSession();
		Query q = session.createQuery("from User");
		List<User> list =  q.list();

		return list;
	}
	
	public User insertUser(User user){
		
			Session session  = factory.getCurrentSession();
			user.setUserStatus("INACTIVE");
			session.save(user);
			return user;
		
	}
	
    public boolean checkLogin(String userName, String userPassword){
			
			boolean userFound = false;
			//Query using Hibernate Query Language
			String SQL_QUERY =" from User as u where u.username=? and u.userPassword=?";
			
			Session session  = factory.getCurrentSession();
			Query query = session.createQuery(SQL_QUERY);
			
			
			query.setParameter(0,userName);
			query.setParameter(1,userPassword);
			List<User> list = query.list();

			if ((list != null) && (list.size() > 0)) {
				userFound= true;
			}

			
			return userFound;              
    }
    
    
}
