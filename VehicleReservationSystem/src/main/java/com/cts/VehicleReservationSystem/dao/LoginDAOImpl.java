package com.cts.VehicleReservationSystem.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.VehicleReservationSystem.bean.Login;


@Repository("loginDAO")
@Transactional

public class LoginDAOImpl implements LoginDAO {

	@Autowired
	//@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	@Transactional(readOnly=true)
	public Login authenticate(String empId, String password) {
		// TODO Auto-generated method stub
		org.hibernate.Session session = null;
		String query = "from userInfo where empId=? and password=?";
		org.hibernate.query.Query<Login> query2 = null;
		System.out.println("klj");
		Login login=new Login(empId, password);
		try {
			session = sessionFactory.getCurrentSession();
			
			query2 = session.createQuery(query);
			query2.setParameter(0, login.getEmpId());
			query2.setParameter(1, login.getPassword());
			 login = query2.getSingleResult();
			 System.out.println("aa");
			return login;
			// TODO: handle exception
			
		}
		catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		System.out.println("User not found");
		return null;
		
		}
		
		}
	
	@Transactional
	public Login insert(Login login) {
		Session session=null;
		session=sessionFactory.getCurrentSession();
		System.out.println(login);
		
		session.save(login);
		// TODO Auto-generated method stub
		return null;
	}

}
