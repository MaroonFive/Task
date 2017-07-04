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
	 * ���ܱ�ʾ�û����������
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
 * 	�޸����Ա�Ļظ�����
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
	 * ���ܱ�ʾͨ��MESSAGES���id�ֶβ�ѯ�������Լ�¼
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
	 *  ���ܱ�ʾ��ѯ�������Լ�¼
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
	private int num;//������
	private int rowsInPage=5;//ÿҳ����ʾ�м�������
	private int allPage;//��ҳ��
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
//��ѯ��������
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
				rs.beforeFirst();//�α궨λ����ǰ
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
	 * ���ܱ�ʾ�û������Ա��ѯ���Լ�¼,ҳ����ʾ����������ҳ��ʾ��
	 */ 
	public List getMessages(String sql, int pageStart, int pageNum) {
		conn=DBConn.getConn();
		try {
			stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=stmt.executeQuery(sql);
			if(pageStart==1){
				rs.beforeFirst();//�α궨λ����ǰ
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
	 * ���ܱ�ʾ����Աɾ���������ԣ��÷������ȵ���public int deleteRevert(String
	 sql){}��Ȼ����ɾ���������ԡ�����̨��ƣ�
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
	 * ���ܱ�ʾ����Ա����idɾ��һ�����ԣ��÷������ȵ���public int deleteRevert(String sql,int
	 status){}��Ȼ����ɾ���������ԡ�����̨��ƣ�
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
	 * ���ܱ�ʾ�û������Ա��ӻظ�����
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
	 * ���ܱ�ʾ��ѯ���лظ����Լ�¼
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
	 * ���ܱ�ʾ�û������Ա��ѯ�ظ����Լ�¼,ҳ����ʾ����������ҳ��ʾ��
	 */ 
	public List getReverts(String sql, int pageStart, int pageNum) {
		this.getCount(sql);
		conn=DBConn.getConn();
		try {
			stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=stmt.executeQuery(sql);
			if(pageStart==1){
				rs.beforeFirst();//�α궨λ����ǰ
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
	* ���ܱ�ʾ����Աͨ��MESSAGES���id�ֶκ�REVERTS���messageId�ֶ�֮����������ϵɾ��ɾ����Ӧ�Ļظ�������Ϣ
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
	 * ���ܱ�ʾ����Աɾ�����лظ�����
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
	 * ���ܱ�ʾ����Աͨ��REVERT���id�ֶ��Լ�MESSAGES���id�ֶκ�REVERTS���messageId�ֶ�֮����������ϵɾ��ɾ����Ӧ��һ���ظ�������Ϣ
	 */ 
	public int deleteRevert(String sql) {
		return this.deleteAllRevert(sql);
	}
}
