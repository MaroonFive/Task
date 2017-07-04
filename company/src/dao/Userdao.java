package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBConn;

import entity.User;

public class Userdao {
 private static Connection conn;
 private static PreparedStatement ps;
 private static ResultSet  rs;
//功能表示验证是否是合法用户
 public User  getuser(String sql)
 {
 conn=DBConn.getConn();
 try {
	ps=conn.prepareStatement(sql);
	rs=ps.executeQuery();
	User user=null;
	if(rs.next())
	{
    user=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));	
		
		
	}
	return user;
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	return  null;
}finally
{
DBConn.closeConn(conn);	
}
	 
 }
 //用户注册
 public int updateuser(String sql)
 {conn=DBConn.getConn();
 try {
	ps=conn.prepareStatement(sql);
	int num=ps.executeUpdate();
	
	return num;
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	return -1;
}
	 
	 
	 
 }
	

}
