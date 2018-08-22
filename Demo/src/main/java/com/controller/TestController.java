package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Course;
import com.service.CourseService;
import com.service.TestService;

@Controller
public class TestController {
	
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private TestService testService;
	
	
	@Autowired
	private TestService questionService;
	
	/*@RequestMapping(value="/scheduletest" ,method=RequestMethod.GET)  
    public ModelAndView scheduleTest() {  
    	ModelAndView model = new ModelAndView("testDetailinput");
    	List<Course> courseList =courseService.displayCourse();
    	model.addObject("lists",courseList);
        return model; 
	}*/

	  
	}
