package com.jdbc;

import java.io.FileInputStream;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Course;
import com.model.Question;

@Repository
@Transactional
public class QuestionDAO {
	@Autowired
	private SessionFactory factory;
	
	
	public List<Question> getQuestion(){
		Session session  = factory.getCurrentSession();
		Query q = session.createQuery("from Question");
		List<Question> list =  q.list();
		return list;
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
	
	
	public Question insertQuestion(Question question){
		
			Session session  = factory.getCurrentSession();
			session.save(question);
			return question;
		
	}
	public void insertQuestionById(long courseId){
		Session session  = factory.getCurrentSession();	
		
		try{
			FileInputStream input = new FileInputStream("C:/Users/Administrator/Desktop/exam.XLS");
			POIFSFileSystem fs = new POIFSFileSystem( input );
			HSSFWorkbook wb = new HSSFWorkbook(fs);
			HSSFSheet sheet = wb.getSheetAt(0);
			Row row;
			for(int i=0; i<=sheet.getLastRowNum(); i++){
				
				row = sheet.getRow(i);
				    
	                
	                String questionDescription = row.getCell(0).getStringCellValue();                
	                String questionAnswer = row.getCell(1).getStringCellValue(); 
	                
	                String optionA = row.getCell(2).getStringCellValue();
	                String optionB = row.getCell(3).getStringCellValue();
	                String optionC = row.getCell(4).getStringCellValue();
	                String optionD = row.getCell(5).getStringCellValue();
	                
	                String status = row.getCell(6).getStringCellValue();
				
				Course oepCourse = (Course) session.get(Course.class, courseId);
				
				Question question = new Question();
				question.setCourse(oepCourse);
				question.setQuestionDescription(questionDescription);
				question.setQuestionAnswer(questionAnswer);
				question.setQuestionOptiona(optionA);
				question.setQuestionOptionb(optionB);
				question.setQuestionOptionc(optionC);
				question.setQuestionOptiond(optionD);
		        
				question.setQuestionStatus(status);
				
				
				session.save(question);

						
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		//return question;
	}
}
