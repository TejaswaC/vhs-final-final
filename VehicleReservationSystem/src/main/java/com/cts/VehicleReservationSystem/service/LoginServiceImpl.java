package com.cts.VehicleReservationSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cts.VehicleReservationSystem.bean.Login;
import com.cts.VehicleReservationSystem.dao.LoginDAO;


@Service("loginService")
@Transactional(propagation=Propagation.SUPPORTS)
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	
	LoginDAO loginDAO ;

	public Login authenticate(String empId, String password) {
		// TODO Auto-generated method stub
		return loginDAO.authenticate(empId, password);
	}

	@Override
	public Login insert(Login login) {
		// TODO Auto-generated method stub
		return loginDAO.insert(login);
	}


}
