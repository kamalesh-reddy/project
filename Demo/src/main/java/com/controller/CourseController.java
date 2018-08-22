package com.controller;

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

@Controller
public class CourseController {
	@Autowired
	private CourseService courseService;
	  
		   
	  @RequestMapping(value="/entercourse" ,method=RequestMethod.GET)   
	    public ModelAndView courseUpdate(HttpSession session){
		  
		  ModelAndView model = new ModelAndView("enterCourse");
		  User usr = (User) session.getAttribute("usersession");
		  model.addObject("name",usr.getUsername());
			return model;
	    }

	  @RequestMapping(value="/coursesuccess",method = RequestMethod.POST)
		public ModelAndView submitForm(@ModelAttribute("course") Course course, BindingResult result,HttpSession session){
			
		  ModelAndView model = new ModelAndView("uploadFile");
		  //model.addObject(user);
		  session.setAttribute("coursesession", course);
		  
		  Course cours = (Course) session.getAttribute("coursesession");
		  
		  
		  model.addObject("courseName",cours.getCourseName());
		  //System.out.println(cours.getCourseId()+" "+cours.getCourseDescription());
		  //model.addObject("course", course);
		  try{
			  courseService.newinsertCourse(course);
		  }catch(Exception e){
			  
		  }
		  
			return model;
		}
		  
		  
	  
		  
		  
		  
	}
