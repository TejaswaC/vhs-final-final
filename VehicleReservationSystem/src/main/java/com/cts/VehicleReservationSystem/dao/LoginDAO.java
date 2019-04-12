package com.cts.VehicleReservationSystem.dao;

import com.cts.VehicleReservationSystem.bean.Login;

public interface LoginDAO {
	public Login authenticate(String userName, String password);
	public Login insert(Login login);
}
