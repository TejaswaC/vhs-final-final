package com.cts.VehicleReservationSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class RegisterController {
	@RequestMapping(value="register.html")                //GetMapping(value="login.html", method= RequestMethod.GET) could also be done
	public String getRegisterPage(){
		return "register";
	}
}
