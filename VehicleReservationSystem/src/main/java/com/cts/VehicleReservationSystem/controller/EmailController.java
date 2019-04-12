package com.cts.VehicleReservationSystem.controller;

import java.io.IOException;  
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cts.VehicleReservationSystem.bean.Vehicle;
import com.cts.VehicleReservationSystem.service.VehicleService;

@Controller
public class EmailController {
	private static final DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
    private static final DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
	static String emailToRecipient, emailSubject, emailMessage;
	static final String emailFromRecipient = "tejasw22@gmail.com";

	static ModelAndView modelViewObj;
	
	
	/*
	 * @Autowired VehicleService vehicleService;
	 */	 
	/*
	 * @Autowired private JavaMailSender mailSenderObj;
	 */

//	@RequestMapping(value = {"/", "emailForm"}, method = RequestMethod.GET)
	public ModelAndView showEmailForm(ModelMap model) {
		modelViewObj = new ModelAndView("emailForm");
		return  modelViewObj;		
	}

	// This Method Is Used To Prepare The Email Message And Send It To The Client
//	@RequestMapping(value = "sendEmail")
	public ModelAndView sendEmailToClient() {
		Connection con = null;
		PreparedStatement ps = null;
		List<Vehicle> VehicleList=new ArrayList<Vehicle>();
		try
		{
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/VehicleReservation_DB?useSSL=false","root","root");
			
			String query = "select * from vehicle";
			ps = con.prepareStatement(query); 
			ResultSet rs= ps.executeQuery();
			int i=0;
            while(rs.next())
            {
            	String id = rs.getString("vehicleNumber");
            	String image = rs.getString("branch");
            	Date item = rs.getDate("insuranceExpiry");
				Date dom = rs.getDate("lastService");;
				Date doe = rs.getDate("serviceDue");
            	String type = rs.getString("vehicleType");

				
				Vehicle vh = new Vehicle(id,image,type,dom,doe,item);
								
				System.out.println(vh);
				
				VehicleList.add(vh);
				
		   	
            }
         
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally{
			
			 try {
				ps.close();
			 	 }
			 catch (SQLException e) {
				
				e.printStackTrace();
			 	 }		
			
			   }	
		Date date = new Date();
        System.out.println(sdf.format(date));
        Long diff;
        String k ="The vehicles' with nearing their insurance due period are:- \n";
		for (Vehicle vehicle: VehicleList)
		{
			
			int j=0;
			Date iDate = vehicle.getInsuranceExpiry();
			System.out.println(iDate);
			diff = (date.getTime() - iDate.getTime())/(24 * 60 * 60 * 1000);
			System.out.println("The days till next service is "+diff);
			if(diff<=15)
			{

				k = k + "\n" +"Vehicle Information for vehicle"+(j++)+":\n"+vehicle;
				
				
			}

		}
		
		
		
		
		
		
		
		
		System.out.println("In Mail Implementation");
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();

        Properties mailProperties = new Properties();
        mailProperties.put("mail.smtp.auth", true);
        mailProperties.put("mail.smtp.starttls.enable", true);
        mailProperties.put("mail.smtp.socketFactory.port", 465);
        mailProperties.put("mail.smtp.debug", true);
        mailProperties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        mailProperties.put("mail.smtp.debug", true);
        mailProperties.put("mail.smtp.socketFactory.fallback", false);
        mailSender.setJavaMailProperties(mailProperties);
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);
        mailSender.setUsername("vehiclereservationdemo@gmail.com");
        mailSender.setPassword("demodemo");
System.out.println("Searching service:"+k);
		// Reading Email Form Input Parameters		
		emailSubject = "Service Due Vehicles";
		emailMessage = k;
		emailToRecipient = "tejasw22@gmail.com";

		// Logging The Email Form Parameters For Debugging Purpose
		System.out.println("\nReceipient?= " + emailToRecipient + ", Subject?= " + emailSubject + ", Message?= " + emailMessage + "\n");

		mailSender.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");				
				mimeMsgHelperObj.setTo(emailToRecipient);
				mimeMsgHelperObj.setFrom(emailFromRecipient);				
				mimeMsgHelperObj.setText(emailMessage);
				mimeMsgHelperObj.setSubject(emailSubject);

				// Determine If There Is An File Upload. If Yes, Attach It To The Client Email				
			
			}
		});
		System.out.println("\nMessage Send Successfully!\n");

		modelViewObj = new ModelAndView("success","messageObj","Thank You! Your Email Has Been Sent!");
		return  modelViewObj;	
	}
}