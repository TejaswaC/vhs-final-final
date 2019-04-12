package com.cts.VehicleReservationSystem.controller;

import javax.servlet.http.HttpSession; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.VehicleReservationSystem.bean.Login;
import com.cts.VehicleReservationSystem.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	//@Qualifier("loginService")
	LoginService loginService;
	
	@RequestMapping(value="login.html")                //GetMapping(value="login.html", method= RequestMethod.GET) could also be done
	public String getLoginPage(){
		return "login";
	}
	@PostMapping(value="login.html")						//PostMapping(value="login.html", method= RequestMethod.GET)
	public ModelAndView validateUser(@ModelAttribute Login login, HttpSession httpsession){
		ModelAndView modelAndView = new ModelAndView();
		if(loginService.authenticate(login.getEmpId(),login.getPassword())!=null){
			System.out.println(login.getEmpId());
			System.out.println(login.getPassword());
			Login login2  = loginService.authenticate(login.getEmpId(), login.getPassword());
			modelAndView.addObject("user", login2);
			httpsession.setAttribute("user", login2);
			System.out.println(login.getEmpId());
			modelAndView.setViewName("home");
			return modelAndView;
		}
		return modelAndView;

		}
	
	@PostMapping(value="insert.html")
	public ModelAndView insertUser(@ModelAttribute Login login){
		ModelAndView modelAndView=new ModelAndView();
		loginService.insert(login);
		modelAndView.setViewName("login");
		
		return modelAndView;
		
		
	}
	@GetMapping(value="sendMails.html")
	public void sendMails(){
		System.out.println("Before Mapping");

		new ClassPathXmlApplicationContext("quartz-config.xml");
		
		System.out.println("In Mail Controller");
		
		
		
	}

}
