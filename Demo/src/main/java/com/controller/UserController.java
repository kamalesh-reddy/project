package com.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.Course;
import com.model.Enroll;
import com.model.Question;
import com.model.User;
import com.service.CourseService;
import com.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private CourseService questionService;
	
	List<Question> questionList = new ArrayList<Question>();
	
	static int count;
	static int result;
	
	

	
	int i=1;
	@RequestMapping(value="/takeatest" ,method=RequestMethod.GET)  
    public ModelAndView takeTest() {  
    	ModelAndView model = new ModelAndView("testInput");
    	
        return model; 
	}
	
	
	@RequestMapping(value="/" ,method=RequestMethod.GET)  
	public String display() {  
		
		return "home"; 
	}
	
	@RequestMapping(value="/generatetest" ,method=RequestMethod.GET)  
    public ModelAndView generateTest(HttpServletRequest request,HttpServletResponse res,HttpSession session) {  
		ModelAndView model = new ModelAndView("selectCourseforTest");
		//String userName = request.getParameter("username");
		User usr = (User)session.getAttribute("usersession");
		String userName = usr.getUsername();
		model.addObject("msg",userName);
		
		List<Enroll> list=userService.checkEnrolledUser(userName);
		
		//System.out.println(list.get(0).);
		model.addObject("lists",list);		
		return model; 

	}

	@RequestMapping(value="/starttest" ,method=RequestMethod.GET)  
    public ModelAndView startTest(HttpServletRequest request,HttpServletResponse res,HttpSession session) { 
		count++;
		ModelAndView model = new ModelAndView("questionContainer");
		
		
		//Course cours = (Course) session.getAttribute("");
		String courseName = request.getParameter("coursename");
    	long courseId = userService.findCourseId(courseName);
    	this.questionList= userService.fetchRandomQuestion(courseId);
		//System.out.println(questionList.get(1).getQuestionDescription());
		Question q  = questionList.get(0);
		model.addObject("question",q);
		
        return model; 
	}
	
	
	@RequestMapping(value="/testcontinuation" ,method = RequestMethod.GET)  
    public ModelAndView computeResult(HttpServletRequest request,HttpServletResponse res,HttpSession session) {
		ModelAndView model= null;
		/*User usr  = (User)session.getAttribute("usersession");
		Course cours = (Course)session.getAttribute("coursesession");*/
		count++;
		if(count<10){
			Question question1 = questionList.get(i++);
			model = new ModelAndView("questionContainer");
			model.addObject(question1);
			String option = request.getParameter("opt");
			//System.out.println(option);
			
			if(userService.computeResult(option)){
				result++;
			}
			return model;
		}
		else{
			
			
			
			model = new ModelAndView("endTest");
			//model.addObject("name",usr.getUsername());
			//model.addObject("course",cours.getCourseName());
			model.addObject("result",result);
			model.addObject("msg","Your test is finished");
			return model;
		}
    	 
	}
	
	
	
	  @RequestMapping(value="/submit" ,method=RequestMethod.GET)   
	    public ModelAndView successMessage(){
		  
		  ModelAndView model = new ModelAndView("view");
		  List<User> usr = userService.displayUser();
		  model.addObject("usr",usr.get(0));
	        return model; 
	    }  
		
		  
		  
		   
	  @RequestMapping(value="/register" ,method=RequestMethod.GET)   
	    public ModelAndView registration(){
		  
		  ModelAndView model = new ModelAndView("register");
			
			return model;
	    }
		  
		  
		  
	  @RequestMapping(value="/registerSuccess",method = RequestMethod.POST)
		public ModelAndView submitForm(@ModelAttribute("user") User user, BindingResult result,HttpSession session){
			
		  //ModelAndView model = null;//new ModelAndView("registerSuccess");
		 // model.addObject(user);
		  //model.addObject("user", user);
		  
		  //session.setAttribute("regsession", user);
		  
		  //User usr = (User)session.getAttribute("regsession");
		  //String userName = usr.getUsername();
		  
		  /*
		  //System.out.println(user.getUserPassword());
		  //userService.decode(pass)
		  //System.out.println(user.getUserRole());
		  

		  String decodePassword=userService.decode(user.getUserPassword());
		  user.setUserPassword(decodePassword);
		  try{
			  userService.newinsertUser(user);
			  if(user.getUserRole().equals("ADMIN")){
				  model= new ModelAndView("loginAdminSuccess");
				  model.addObject("name",userName);
				  return model;
			  }
			  else{
				  model= new ModelAndView("loginSuccess");
				  model.addObject("name",userName);
				  return model;
			  }
		  }catch(Exception e){
			  return new ModelAndView("register");
		  }
*/		  
		  //Email email =new Email();
		 // email.emailSend();
		  /*if(user.getUserRole().equals("ADMIN")){
			  return new ModelAndView("loginAdminSuccess");
		  }
		  else{
			  return new ModelAndView("loginSuccess");
		  }*/
//		  ModelAndView model = new ModelAndView("registerSuccess");
		  ModelAndView model = null;//new ModelAndView("registerSuccess");
		 // model.addObject(user);
		  //model.addObject("user", user);
		  //System.out.println(user.getUserPassword());
		  //userService.decode(pass)
		 // System.out.println(user.getUserRole());
		  

		  //String decodePassword=userService.decode(user.getUserPassword());
		  //user.setUserPassword(decodePassword);
		  try{
			  userService.newinsertUser(user);
		  }catch(Exception e){
			  
		  }
		  
		  //Email email =new Email();
		 // email.emailSend();
		  if(user.getUserRole().equals("ADMIN")){
			  model=new ModelAndView("loginAdminSuccess");
			  return  model;
		  }
		  else{
			  model=new ModelAndView("loginSuccess");
			  return model;
		  }
		}
		  
	  @RequestMapping(value="/loginsuccess" ,method=RequestMethod.GET) 
	    public ModelAndView landinPage(HttpSession session){
		  	ModelAndView model  = new ModelAndView("loginSuccess");
		 // ModelAndView model = new ModelAndView("login");
		  	 User usr = (User)session.getAttribute("usersession");
		  	 model.addObject("name",usr.getUsername());
		  	 return model;
	    }
	  @RequestMapping(value="/login" ,method=RequestMethod.GET) 
	  @ResponseBody
	    public ModelAndView loginInput(){
		  
		  ModelAndView model = new ModelAndView("login");
			return model;
	    }
	  
	  @RequestMapping(value="/loginadminsuccess" ,method=RequestMethod.GET) 
	  
	    public ModelAndView goBack(HttpSession session){
		  
		  ModelAndView model  = new ModelAndView("loginAdminSuccess");
			 // ModelAndView model = new ModelAndView("login");
			  	 User usr = (User)session.getAttribute("usersession");
			  	 model.addObject("name",usr.getUsername());
			  	 return model;
	    } 
	  
	  @RequestMapping(value="/logout", method = RequestMethod.GET)
	  public String logOut(HttpSession session){
		  session.invalidate();
		  return "home";
	  }
	  
	  @RequestMapping(value="/loginvalidator" ,method = RequestMethod.GET)   
	    public ModelAndView loginValidator(@ModelAttribute("user") User user,HttpSession session){
		  ModelAndView model = null;//new ModelAndView("loginSuccess");
		 
		  session.setAttribute("usersession",user);
		  if(!userService.checkUser(user)){
			  
			  String msg = "Enter Correct user name and password";
			  model = new ModelAndView("login");
			  model.addObject("msg",msg);
			  
			  User usr = (User)session.getAttribute("usersession");
			  
			  //System.out.println(usr.getUsername());
			  return model;
		  }
		  
		  if(userService.checkUser(user)&& userService.checkUserRole(user)){
			  model = new ModelAndView("loginAdminSuccess");
			  model.addObject("user", user);
			  
			  return model;
		  }
		  
		  if(userService.checkUser(user) ){
			  User usr = (User)session.getAttribute("usersession");
			  model = new ModelAndView("loginSuccess");
			  //System.out.println(usr.getUsername());
			  model.addObject("name",usr.getUsername());
			  
			  model.addObject("user", user);
			  return model;
		  }
		  else{
			  model = new ModelAndView("login");
			  return model;
		  }
	    }
	  @RequestMapping(value="/enrollcourse" ,method=RequestMethod.GET)   
	    public ModelAndView course(HttpSession session){
		  ModelAndView model = new ModelAndView("courseList");
		  List<Course> list =courseService.displayCourse();
		  //User usr = (User)session.getAttribute("usersession");
		  //session.setAttribute("courseList", list);
		  //List<Course> displayList = (List<Course>) session.getAttribute("courseList");
		  //model.addObject("name",usr.getUsername());
		  model.addObject("lists",list);
		  	return model;
		  /*ModelAndView model = new ModelAndView("login");
		  return model;*/
	  }
	  @RequestMapping(value="/selectcourse" ,method=RequestMethod.GET)   
	    public ModelAndView listCourse(/*@ModelAttribute("user") User user, BindingResult result,*/HttpSession session){
		  ModelAndView model = new ModelAndView("courseList");
		  //List<Course> list =courseService.displayCourse();
		  
		  	//User usr = (User)session.getAttribute("usersession");
		  	//session.setAttribute("courselist", list);
		  	
		  	//List<Course> displayList = (List<Course>) session.getAttribute("courseList");
		  	List<Course> list =courseService.displayCourse();
		  	//System.out.println(tli.get(0).getCourseName());
			//model.addObject("user",usr.getUsername());
			model.addObject("lists",list);
			return model;
	    }
	  
	  @RequestMapping(value="/enrollcoursesuccess" ,method=RequestMethod.GET)   
	    public ModelAndView enrollCourse(HttpServletRequest request,HttpServletResponse res,HttpSession session){
		  ModelAndView model = null;//new ModelAndView("courseList");
		  String courseName = request.getParameter("courseName");
		  User usr = (User)session.getAttribute("usersession");
		  String userName = usr.getUsername();
		  //String userName = request.getParameter("username");
		  long courseId=userService.findCourseId(courseName);
		  long userId=userService.findUserId(userName);
		  //List<Course> displayList = (List<Course>) session.getAttribute("courseList");
		  try{
			  model = new ModelAndView("loginSuccess");
			  userService.insertEnrollment(courseId, userId);
			  String msg = "Congrats !!!!! "+userName+" you are succesfully added for "+courseName+" enroll for another course";
			  
			  model.addObject("msg",msg);
			  return model;
		  }catch(Exception e){
			  model =new ModelAndView("courseList");
			  model.addObject("name",usr.getUsername());
			  //List<Course> displayList = (List<Course>) session.getAttribute("courseList");
			  List<Course> list =courseService.displayCourse();
			  model.addObject("lists",list);
			  String msg = "You are already enrolled for "+courseName;
			  model.addObject("msg",msg);
			  return model;
		  }
		  
		  
		  
		  
			
	    }
	}
