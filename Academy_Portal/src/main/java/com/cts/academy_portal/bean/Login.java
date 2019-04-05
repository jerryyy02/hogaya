package com.cts.academy_portal.bean;

import javax.persistence.Entity; 
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Login_Table")
public class Login {
	@Id
	private String userName;
	private String password;
	private String userType;
	private int	userStatus;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public int getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}
	@Override
	public boolean equals(Object arg0) {
		// TODO Auto-generated method stub
		return super.equals(arg0);
	}
	@Override
	public String toString() {
		return "Login [userName=" + userName + ", password=" + password + ", userType=" + userType + ", userStatus="
				+ userStatus + "]";
	}
	
	

}
