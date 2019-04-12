package com.cts.VehicleReservationSystem.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity(name="userInfo")
@Table(name="userInfo")
public class Login{
	
	public Login(String empId, String password) {
		super();
		this.empId = empId;
		this.password = password;
	}

	
		public Login() {
		super();
		// TODO Auto-generated constructor stub
	}


		@Id
		@Column(name="empId")
		private String empId;
		private String firstName;
		private String lastName;
		
		@Override
		public String toString() {
			return "Login [empId=" + empId + ", firstName=" + firstName + ", lastName=" + lastName + ", contactNumber="
					+ contactNumber + ", email=" + email + ", branch=" + branch + ", password=" + password + ", gender="
					+ gender + "]";
		}


		public String getEmpId() {
			return empId;
		}
		public void setEmpId(String empId) {
			this.empId = empId;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getContactNumber() {
			return contactNumber;
		}
		public void setContactNumber(String contactNumber) {
			this.contactNumber = contactNumber;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getBranch() {
			return branch;
		}
		public void setBranch(String branch) {
			this.branch = branch;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getGender() {
			return gender;
		}


		public void setGender(String gender) {
			this.gender = gender;
		}


		//private String gender;
		private String contactNumber;
		private String email;
		private String branch;
		private String password;
		private String gender;


}
