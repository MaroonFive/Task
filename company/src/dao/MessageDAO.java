package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.DBConn;

import entity.Message;
import entity.Revert;

public class MessageDAO {
	private Connection conn;
	private PreparedStatement ps;
	private Statement stmt;
	private ResultSet rs;
	/*
	 * 功能表示用户添加新留言
	 */ 
	public int saveMessage(Message message, String sql) {
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1,message.getSendName());
			ps.setString(2, message.getTitle());
			ps.setString(3, message.getContent());
			//ps.setInt(4,message.getRevertNum());
			//ps.setString(5,message.getSendTime());
			int num=ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		finally{
			DBConn.closeSt(ps);
			DBConn.closeConn(conn);
		}
		
	}

/*
 * 	修改留言表的回复次数
 */
	public int updateMessage(String sql){
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			int num=ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		finally{
			DBConn.closeSt(ps);
			DBConn.closeConn(conn);
		}
	}
	/*
	 * 功能表示通过MESSAGES表的id字段查询单个留言记录
	 */ 
	public Message getMessage(String sql) {
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			Message me = null;
			if(rs.next()){
				me=new Message();
				me.setId(rs.getInt(1));
				me.setSendName(rs.getString(2));
				me.setTitle(rs.getString(3));
				me.setContent(rs.getString(4));
				me.setRevertNum(rs.getInt(5));
				me.setSendTime(rs.getString(6));
				
			}
			return me;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		finally{
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(conn);
			
		}
	}

	/*
	 *  功能表示查询所有留言记录
	 */
	public List getMessages(String sql) {
		List list = new ArrayList();
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				Message me=new Message();
				me.setId(rs.getInt(1));
				me.setSendName(rs.getString(2));
				me.setTitle(rs.getString(3));
				me.setContent(rs.getString(4));
				me.setRevertNum(rs.getInt(5));
				me.setSendTime(rs.getString(6));
				list.add(me);
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
			DBConn.closeConn(conn);
			
		}
	}
	private int num;//总条数
	private int rowsInPage=5;//每页所显示有几条数据
	private int allPage;//总页数
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
//查询所有数据
	public void getCount(String sql){
		conn=DBConn.getConn();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				num=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(conn);
			
		}
		
	}
	
	public List nextPage(String sql,int page){
		conn=DBConn.getConn();
		try {
			stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=stmt.executeQuery(sql);
			if(page==1){
				rs.beforeFirst();//游标定位到最前
			}else
			{
				rs.absolute((page-1)*rowsInPage);
			}
			List list = new ArrayList();
			for(int i=0;i<rowsInPage&&rs.next();i++){
				Message me=new Message();
				me.setId(rs.getInt(1));
				me.setSendName(rs.getString(2));
				me.setTitle(rs.getString(3));
				me.setContent(rs.getString(4));
				me.setRevertNum(rs.getInt(5));
				me.setSendTime(rs.getString(6));
				
				list.add(me);
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
			DBConn.closeConn(conn);
		}
	}
	/*
	 * 功能表示用户或管理员查询留言记录,页面显示的条数，分页显示。
	 */ 
	public List getMessages(String sql, int pageStart, int pageNum) {
		conn=DBConn.getConn();
		try {
			stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=stmt.executeQuery(sql);
			if(pageStart==1){
				rs.beforeFirst();//游标定位到最前
			}else
			{
				rs.absolute((pageStart-1)*pageNum);
			}
			List list = new ArrayList();
			for(int i=0;i<pageNum&&rs.next();i++){
				Message me=new Message();
				me.setId(rs.getInt(1));
				me.setSendName(rs.getString(2));
				me.setTitle(rs.getString(3));
				me.setContent(rs.getString(4));
				me.setSendTime(rs.getString(5));
				list.add(me);
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
			DBConn.closeConn(conn);
		}
	}

	/*
	 * 功能表示管理员删除所有留言，该方法首先调用public int deleteRevert(String
	 sql){}，然后在删除所有留言。（后台设计）
	 */ 
	public int deleteAllMessage(String sql,String sql1) {
		this.deleteAllRevert(sql1);
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			int num=ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		finally{
			DBConn.closeSt(ps);
			DBConn.closeConn(conn);
		}
		
	}
	
	/*
	 * 功能表示管理员根据id删除一条留言，该方法首先调用public int deleteRevert(String sql,int
	 status){}，然后在删除该条留言。（后台设计）
	 */ 
	public int deleteMessage(String sql,String sql1, int status) {
		this.deleteRevert(sql1, status);
		return this.deleteAllRevert(sql);
//		conn=DBConn.getConn();
//		try {
//			ps=conn.prepareStatement(sql);
//			int num= ps.executeUpdate();
//			return num;
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return -1;
//		}
//		finally{
//			DBConn.closeSt(ps);
//			DBConn.closeConn(conn);
//		}
	}

	/*
	 * 功能表示用户或管理员添加回复留言
	 */ 
	public int saveRevert(Revert revert, String sql) {
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, revert.getMessageId());
			ps.setString(2, revert.getSendName());
			ps.setString(3, revert.getTitle());
			ps.setString(4, revert.getContent());
			int num=ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		finally{
			DBConn.closeSt(ps);
			DBConn.closeConn(conn);
		}
	}

	public Revert getRevert(String sql){
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			Revert revert=null;
			if(rs.next()){
				revert=new Revert();
				revert.setId(rs.getInt(1));
				revert.setMessageId(rs.getInt(2));
				revert.setSendName(rs.getString(3));
				revert.setTitle(rs.getString(4));
				revert.setContent(rs.getString(5));
				revert.setSendTime(rs.getString(6));
			}
			return revert;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		finally{
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(conn);
		}
	}
	/*
	 * 功能表示查询所有回复留言记录
	 */ 
	public List getReverts(String sql) {
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			List list = new ArrayList();
			while(rs.next()){
				Revert revert=new Revert();
				revert.setId(rs.getInt(1));
				revert.setMessageId(rs.getInt(2));
				revert.setSendName(rs.getString(3));
				revert.setTitle(rs.getString(4));
				revert.setContent(rs.getString(5));
				revert.setSendTime(rs.getString(6));
				list.add(revert);
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
			DBConn.closeConn(conn);
		}
	}
	public List getRevertsByMessageId(String sql){
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			List list = new ArrayList();
			while(rs.next()){
				Revert revert=new Revert();
				revert.setId(rs.getInt(1));
				revert.setMessageId(rs.getInt(2));
				revert.setSendName(rs.getString(3));
				revert.setTitle(rs.getString(4));
				revert.setContent(rs.getString(5));
				revert.setSendTime(rs.getString(6));
				list.add(revert);
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
			DBConn.closeConn(conn);
		}
	}
	/*
	 * 功能表示用户或管理员查询回复留言记录,页面显示的条数，分页显示。
	 */ 
	public List getReverts(String sql, int pageStart, int pageNum) {
		this.getCount(sql);
		conn=DBConn.getConn();
		try {
			stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=stmt.executeQuery(sql);
			if(pageStart==1){
				rs.beforeFirst();//游标定位到最前
			}else
			{
				
				rs.absolute((pageStart+this.getNum()-1)*pageNum);
			}
			List list = new ArrayList();
			for(int i=0;i<pageNum&&rs.next();i++){
				Revert me=new Revert();
				me.setId(rs.getInt(1));
				me.setMessageId(rs.getInt(2));
				me.setSendName(rs.getString(3));
				me.setTitle(rs.getString(4));
				me.setContent(rs.getString(5));
				me.setSendTime(rs.getString(6));
				list.add(me);
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
			DBConn.closeConn(conn);
		}
	}
	/*
	* 功能表示管理员通过MESSAGES表的id字段和REVERTS表的messageId字段之间的主外键关系删除删除相应的回复留言信息
	*/
	public int deleteRevert(String sql, int status) {
		return this.deleteAllRevert(sql);
//		conn=DBConn.getConn();
//		try {
//			ps=conn.prepareStatement(sql);
//			int num=ps.executeUpdate();
//			return num;
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return -1;
//		}
//		finally{
//			DBConn.closeSt(ps);
//			DBConn.closeConn(conn);
//		}
	}

	/*
	 * 功能表示管理员删除所有回复留言
	 */ 
	public int deleteAllRevert(String sql) {
		conn=DBConn.getConn();
		try {
			ps=conn.prepareStatement(sql);
			int num=ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		finally{
			DBConn.closeSt(ps);
			DBConn.closeConn(conn);
		}
	}

	/*
	 * 功能表示管理员通过REVERT表的id字段以及MESSAGES表的id字段和REVERTS表的messageId字段之间的主外键关系删除删除相应的一条回复留言信息
	 */ 
	public int deleteRevert(String sql) {
		return this.deleteAllRevert(sql);
	}
}
