package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.DBConn;

import entity.News;

public class GetAllnews {
	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	public List getPageList(String sql,int page){
		int pageNume = 10;
		conn = DBConn.getConn();
		try {
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(sql);
			if(page==1){
				rs.beforeFirst();
			}else{
				rs.absolute((page-1)*pageNume);
			}
			List list = new ArrayList();
			for(int i=0;i<pageNume&&rs.next();i++){
				News  news=new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				list.add(news);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			
			DBConn.closeConn(conn);
		}
	}
	
	private int num;
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public void getCount(String sql){
		conn = DBConn.getConn();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				this.num = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			DBConn.closeConn(conn);
		}
	}
	
}
