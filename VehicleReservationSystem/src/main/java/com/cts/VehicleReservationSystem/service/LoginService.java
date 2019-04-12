package com.cts.VehicleReservationSystem.service;

import com.cts.VehicleReservationSystem.bean.Login;

public interface LoginService {
	public Login authenticate(String empId, String password);
	public Login insert(Login login);
}
