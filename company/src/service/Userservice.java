package service;

import dao.Userdao;
import entity.User;

public class Userservice {
	Userdao  ud=new Userdao();
	/*
	 * 验证用户名和密码是否正确
	 */
	public  User  getuser(String name,String pwd)
	{
    String sql="select *  from  USERS  where   userName='"+name+"' and password='"+pwd+"'";
		
		return  ud.getuser(sql);
	}
	/*
	 * 添加用户  用户身份默认为0 属于普通用户
	 */
	public  int  updateuser(String name,String pwd)
	{
   String sql="insert into  users values('"+name+"','"+pwd+"',0)";		
		return  ud.updateuser(sql);
		
	}

}
