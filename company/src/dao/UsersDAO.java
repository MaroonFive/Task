package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Product;
import entity.User;


import util.DBConn;

public class UsersDAO {
	
	private Connection con;
	
	private PreparedStatement ps;
	
	private ResultSet rs;
//	功能表示验证是否是合法用户
	public int saveUsers(User users, String sql) {
		con = DBConn.getConn();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, users.getUserName());
			ps.setString(2, users.getPassword());
			int num = ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		} finally {
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}
	//功能表示删除用户
	public int deleteUsers(String sql){
		con=DBConn.getConn();
		try {
			ps=con.prepareStatement(sql);
			int num=ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		finally{
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}
	
	public User getUser(String sql,User user){
		con=DBConn.getConn();
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			rs=ps.executeQuery();
			User users =null;
			if(rs.next()){
				users = new User();
				users.setUserId(rs.getInt(1));
				users.setUserName(rs.getString(2));
				users.setPassword(rs.getString(3));
				users.setStatus(rs.getInt(4));
			}
			return users;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		finally{
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}
	
	public List getUsers(String sql){
		con=DBConn.getConn();
		try {
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			List list = new ArrayList();
			User user = null;
			while(rs.next()){
				user = new User();
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setStatus(rs.getInt(4));
				list.add(user);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		finally{
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	} 

}
