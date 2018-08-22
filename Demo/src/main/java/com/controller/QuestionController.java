package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Course;
import com.model.User;
import com.service.CourseService;
import com.service.QuestionService;
import com.service.UserService;

@Controller
public class QuestionController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private QuestionService questionService;
	
	
	@RequestMapping(value="/uploadfile" ,method=RequestMethod.GET)  
		    public ModelAndView loginData(@ModelAttribute("course") Course course, BindingResult result,HttpSession session) {  
		    	ModelAndView model = new ModelAndView("uploadFile");
		    	/*List<Course> list =courseService.displayCourse();
		    	session.setAttribute("cList", list);
		    	List<Course> displayList = (List<Course>) session.getAttribute("cList");*/
		    	User usr = (User)session.getAttribute("usersession");
		    	
		    	session.setAttribute("courseses", course);
		    	
		    	Course cours =(Course)session.getAttribute("courseses");
		    	//System.out.println("course"+cours.getCourseName());
		    	model.addObject("courseName",cours.getCourseName());
		    	
		    	
		    	//System.out.println(usr.getUsername());
		    	//System.out.println(displayList.get(0).getCourseName());
		    	//model.addObject("lists",displayList);
		        return model; 
    }
	
	
	
	@RequestMapping(value="/uploadquestion",method=RequestMethod.GET )  
		    public ModelAndView newLoginData(HttpServletRequest request,HttpServletResponse res,HttpSession session) {  
		
				//List<Course> list =courseService.displayCourse();
		
				
		    	String courseName= request.getParameter("course_name");
		    	
		    	Course cours = (Course) session.getAttribute("coursesession");
		    	
		    	ModelAndView model = new ModelAndView("uploadFile");
		    	
		    	long cid = cours.getCourseId();
		    	
		    	String cName = cours.getCourseName();
		    	
		    	System.out.println("dsadadsd vsfsfsd"+cid);
		    	long courseId=questionService.findCourseId(cName);
		    	
		    	//questionService.newinsertQuestion(courseId);
		    	try{
		    		questionService.newinsertQuestion(courseId);
		    		String msg = cName+ "'s questions successfully uploaded ";
		    		model.addObject("msg",msg);
		    	}catch(Exception e){
		    		String msg = "Upload failed";
		    		model.addObject("msg",msg);
		    	}
		    	//questionService.newinsertQuestion(cid);
		    	//model.addObject("msg","courseName"+courseId);
		    	
		        return model; 
    }
	
	
	
	@RequestMapping(value="/adminhome" ,method=RequestMethod.GET)  
    public ModelAndView adminHome() {  
    	ModelAndView model = new ModelAndView("loginAdminSuccess");
        return model; 
	}
	
	
	@RequestMapping(value="/deletequestion" ,method=RequestMethod.GET)  
    public ModelAndView deleteQuestion() {  
    	ModelAndView model = new ModelAndView("selectDeleteQuestion");
        return model; 
	}
	
	
}
