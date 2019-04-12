package com.cts.VehicleReservationSystem.dao;

import java.util.Date;
import java.util.List;

import com.cts.VehicleReservationSystem.bean.Vehicle;

public interface VehicleDAO {
public Vehicle insertVehicle(Vehicle vehicle);
public List<Vehicle> getallVehicle();
public List<Vehicle> searchVehicleByValues(String search_by, String search_value);
public Vehicle updateVehicle(Vehicle vehicle);
public Vehicle sendVehicle(String vehicleNumber);
public List<Vehicle> searchVehicleByDate(String search_by, Date d1);
public String getInsuraceDueMessage();
}
