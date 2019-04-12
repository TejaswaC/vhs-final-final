package com.cts.VehicleReservationSystem.controller;

import java.util.Calendar;

import com.cts.VehicleReservationSystem.controller.EmailController;

public class SendEmailTask {
	
	 public void sendEmail() {
		  		 
		  // You may want to put some condition for sending email
          // Actual email send logic		 
		  System.out.println("Sending email for vehicle reservation "+ Calendar.getInstance().getTime());
		  EmailController ec = new EmailController();
			ec.sendEmailToClient();
	 }

}
