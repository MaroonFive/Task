package entity;

import java.io.Serializable;

public class User implements Serializable {
	public User(){}
	public  User(int userId,String userName,String password, int status)
	{
	this.userId=userId;
	this.userName=userName;
	this.password=password;
	this.status=status;
		
	}
	
	private int userId; // 标识列

	private String userName; // 用户名

	private String password; // 密码，不能为空

	private int status; // 用户头像 ，默认0

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
