package com.cts.VehicleReservationSystem.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cts.VehicleReservationSystem.bean.Vehicle;

import com.cts.VehicleReservationSystem.dao.VehicleDAO;

@Service("vehicleService")
@Transactional(propagation=Propagation.SUPPORTS)
public class VehicleServiceImpl implements VehicleService {

	@Autowired
	VehicleDAO vehicleDAO ;

	@Override
	public Vehicle insertVehicle(Vehicle vehicle) {
		System.out.println("In Service" + vehicle);
		return vehicleDAO.insertVehicle(vehicle);
	}

	@Override
	public List<Vehicle> getallVehicle() {
		// TODO Auto-generated method stub
		return vehicleDAO.getallVehicle();
	}

	@Override
	public List<Vehicle> searchVehicleByValues(String search_by, String search_value) {
		// TODO Auto-generated method stub
		System.out.println(vehicleDAO.searchVehicleByValues(search_by,search_value));
		return vehicleDAO.searchVehicleByValues(search_by,search_value);
	}

	@Override
	public Vehicle updateVehicle(Vehicle vehicle) {
		// TODO Auto-generated method stub
		return vehicleDAO.updateVehicle(vehicle);
	}

	@Override
	public Vehicle sendVehicle(String vehicleNumber) {
		// TODO Auto-generated method stub
		return vehicleDAO.sendVehicle(vehicleNumber);
	}

	@Override
	public List<Vehicle> searchVehicleByDate(String search_by, Date d1) {
		// TODO Auto-generated method stub
		return vehicleDAO.searchVehicleByDate(search_by, d1);
	}

	@Override
	public String getInsuraceDueMessage() {
		// TODO Auto-generated method stub
		return vehicleDAO.getInsuraceDueMessage();
	}

}
