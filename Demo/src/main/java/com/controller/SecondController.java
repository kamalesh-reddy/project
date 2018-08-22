package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecondController {

	@RequestMapping("/helloAgain")
	public ModelAndView getHello()
	{
		String str="hh";
		return new ModelAndView("view","str",str);
	}
}
