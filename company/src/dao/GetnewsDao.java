package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.News;

import util.DBConn;

public class GetnewsDao {
 private  static  Connection  conn;
 private  static  PreparedStatement  ps;
 private  static  ResultSet  rs;
 
 
 public  List  getnews(String sql)
 {
	conn=DBConn.getConn();
	try {
		ps=conn.prepareStatement(sql);
		rs=ps.executeQuery();
		List  list=new ArrayList();
	while(rs.next())
	{
	News  news=new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
	list.add(news);
		
	}	
	return list;
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	}
    finally
    {
    DBConn.closeConn(conn);	
    	
    }
	 }
 public  News  getnew(String sql)
 {
	 conn=DBConn.getConn();
	 try {
		ps=conn.prepareStatement(sql);
		rs=ps.executeQuery();
		News  news=null;
		if(rs.next())
		{
			news=new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));	
			
		}
		return  news;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return  null;
	}
	 finally
	 {
	DBConn.closeConn(conn);	 
		 
	 }
	 
 }
}
