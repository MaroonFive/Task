package service;

import dao.Userdao;
import entity.User;

public class Userservice {
	Userdao  ud=new Userdao();
	/*
	 * ��֤�û����������Ƿ���ȷ
	 */
	public  User  getuser(String name,String pwd)
	{
    String sql="select *  from  USERS  where   userName='"+name+"' and password='"+pwd+"'";
		
		return  ud.getuser(sql);
	}
	/*
	 * ����û�  �û����Ĭ��Ϊ0 ������ͨ�û�
	 */
	public  int  updateuser(String name,String pwd)
	{
   String sql="insert into  users values('"+name+"','"+pwd+"',0)";		
		return  ud.updateuser(sql);
		
	}

}
