package com.cts.VehicleReservationSystem.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.VehicleReservationSystem.bean.Vehicle;


@Repository("vehicleDAO")
@Transactional
public class VehicleDAOImpl implements VehicleDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	private static final DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
    private static final DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
//	@Override
	@Transactional
	public Vehicle insertVehicle(Vehicle vehicle) {
		System.out.println("In DAO" + vehicle);

		Session session=null;
		session=sessionFactory.getCurrentSession();
		System.out.println(vehicle);
		
		session.save(vehicle);
		// TODO Auto-generated method stub
		return vehicle;
	}

	
	
	@Transactional(readOnly=true)
	public List<Vehicle> getallVehicle() {
		Session session=null;
		String query=" from vehicle";
		org.hibernate.query.Query<Vehicle> query2=null;
		session = sessionFactory.getCurrentSession();
		query2=session.createQuery(query);
		List<Vehicle> list=query2.getResultList();
		System.out.println(list);
		return list;
	}



	@Transactional
	public List<Vehicle> searchVehicleByValues(String search_by, String search_value) {
		Session session =null;
		if("Vehicle Number".equals(search_by)){
		String query ="from vehicle where vehicleNumber=?";
			org.hibernate.query.Query<Vehicle> query2 = null;
			session=sessionFactory.getCurrentSession();
			query2=session.createQuery(query);
			query2.setParameter(0, search_value);
			List<Vehicle> list=query2.getResultList();
			return list;	
		}
		if("Branch".equals(search_by)){
			String query ="from vehicle where branch=?";
				org.hibernate.query.Query<Vehicle> query2 = null;
				session=sessionFactory.getCurrentSession();
				query2=session.createQuery(query);
				query2.setParameter(0, search_value);
				List<Vehicle> list=query2.getResultList();
				return list;	
			}
		
		else{
			String query ="from vehicle where vehicleType=?";
			org.hibernate.query.Query<Vehicle> query2 = null;
			session=sessionFactory.getCurrentSession();
			query2=session.createQuery(query);
			query2.setParameter(0, search_value);
			List<Vehicle> list=query2.getResultList();
			return list;
		}
	}



	
	@Transactional
	public Vehicle updateVehicle(Vehicle vehicle) {
		Session session=null;
		session=sessionFactory.getCurrentSession();
		System.out.println(vehicle);
		
		session.saveOrUpdate(vehicle);
		// TODO Auto-generated method stub
		return vehicle;
	}

	@Transactional(readOnly=true)
	public String getInsuraceDueMessage() {
		Session session=null;
		String query=" from vehicle";
		org.hibernate.query.Query<Vehicle> query2=null;
		session = sessionFactory.getCurrentSession();
		query2=session.createQuery(query);
		List<Vehicle> list=query2.getResultList();
		System.out.println(list);
		Date date = new Date();
        System.out.println(sdf.format(date));
        Long diff;
        String k ="The vehicles' with nearing their insurance due period are:- \n";
		for (Vehicle vehicle: list)
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
		
		
		
		return k;
	}

	@Transactional
	public Vehicle sendVehicle(String vehicleNumber) {
		// TODO Auto-generated method stub
		Session session =null;
		String query ="from vehicle where vehicleNumber=?";
		org.hibernate.query.Query<Vehicle> query2 = null;
		session=sessionFactory.getCurrentSession();
		query2=session.createQuery(query);
		query2.setParameter(0, vehicleNumber);
		Vehicle vehicle=query2.getSingleResult();
		return vehicle;
	}



	@Override
	public List<Vehicle> searchVehicleByDate(String search_by, Date d1) {
		// TODO Auto-generated method stub
		Session session =null;
		if("Insurance Expiry".equals(search_by)){
			String query ="from vehicle where insuranceExpiry=?";
				org.hibernate.query.Query<Vehicle> query2 = null;
				session=sessionFactory.getCurrentSession();
				query2=session.createQuery(query);
				query2.setParameter(0, d1);
				List<Vehicle> list=query2.getResultList();
				return list;	
			}
		if("Service Due".equals(search_by)){
			String query ="from vehicle where serviceDue=?";
				org.hibernate.query.Query<Vehicle> query2 = null;
				session=sessionFactory.getCurrentSession();
				query2=session.createQuery(query);
				query2.setParameter(0, d1);
				List<Vehicle> list=query2.getResultList();
				return list;	
			}
		else{
			String query ="from vehicle where lastService=?";
				org.hibernate.query.Query<Vehicle> query2 = null;
				session=sessionFactory.getCurrentSession();
				query2=session.createQuery(query);
				query2.setParameter(0, d1);
				List<Vehicle> list=query2.getResultList();
				return list;	
			}
	}



	

}