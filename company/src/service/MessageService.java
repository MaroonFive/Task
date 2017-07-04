package service;

import java.util.Iterator;
import java.util.List;

import dao.MessageDAO;

import entity.Message;
import entity.Revert;

public class MessageService {
	MessageDAO md = new MessageDAO();

	/*
	 * 功能表示用户添加新留言，该方法调用dao层的MessageDAO类中的public int saveMessage(Message message,String sql){}方法
	 */ 
	public int saveMessage(Message message) {
		String sql = "insert into messages values(?,?,?,default,default)";
		System.out.println("sql:>>"+sql);
		return md.saveMessage(message, sql);
	}

	/*
	 * 修改留言信息的回复次数
	 */
	public int updateMessage(int id){
		String sql="update messages set revertNum=revertNum+1 where id="+id+"";
		System.out.println("sql:>>"+sql);
		return md.updateMessage(sql);
	}
	/*
	 * 功能表示通过MESSAGES表的id字段查询单个留言记录，该方法调用dao层的MessageDAO类中的public Message
	 getMessage(String sql){} 方法
	 */ 
	public Message getMessage(int messageId) {
		String sql = "select * from messages where id="+messageId;
		System.out.println("sql:>>"+sql);
		return md.getMessage(sql);
	}

	/*
	 * 功能表示查询所有留言记录，该方法调用dao层的MessageDAO类中的public List getMessages(String
	 sql){}方法
	 */ 
	public List getMessages() {
		String sql = "select * from messages";
		System.out.println("sql:>>"+sql);
		return md.getMessages(sql);
	}

	/*
	 * 功能表示用户或管理员查询留言记录,页面显示的条数，分页显示。该方法调用dao层的MessageDAO类中的public List
	 getMessages (String sql，int pageStart,int pageNum){} 方法
	 */ 
	public List getMessages(int pageStart, int pageNum) {
		String sql = "select * from messages";
		System.out.println("sql:>>"+sql);
		return md.getMessages(sql, pageStart, pageNum);
	}

	/*
	 * 功能表示管理员删除所有留言，该方法调用dao层的MessageDAO类中的public int deleteMessage(){}方法
	 */ 
	public int deleteAllMessage() {
		String sql = "delete from messages";
		String sql1="delete from Reverts";
		System.out.println("sql:>>"+sql);
		System.out.println("sql:>>"+sql1);
		return md.deleteAllMessage(sql, sql1);
	}

	/*
	 * 功能表示管理员根据id删除一条留言，该方法调用dao层的MessageDAO类中的public int deleteMessage(String
	 sql){}方法
	 */ 
	public int deleteMessage(int id) {
		String sql = "delete from REVERTS where messageId="+id;
		String sql1 = "delete from MESSAGES where id="+id;
		System.out.println("sql:>>"+sql);
		System.out.println("sql:>>"+sql1);
		return md.deleteMessage(sql,sql1,0);
	}

	/*
	 * 功能表示用户或管理员添加回复留言，该方法调用dao层的MessageDAO类中的public int saveRevert(Revert revert,String sql){}方法
	 */ 
	public int saveRevert(Revert revert) {
		String sql = "insert into reverts values(?,?,?,?,default)";
		 md.saveRevert(revert, sql);
		 return this.updateMessage(revert.getMessageId());
	}

	/*
	 * 功能表示查询所有回复留言记录，该方法调用dao层的MessageDAO类中的public List getAllReverts(String
	 sql){}方法
	 */ 
	public List getAllReverts() {
		String sql = "select * from reverts";
		return md.getReverts(sql);
	}

	public List getRevertsByMessageId(int messageId) {
		String sql = "select * from  reverts where messageId="+messageId;
		System.out.println("sql:>>"+sql);
		return md.getRevertsByMessageId(sql);
	}
	/*
	 * 功能表示用户或管理员查询回复留言记录,页面显示的条数，分页显示。该方法调用dao层的MessageDAO类中的public List
	 getReverts (String sql，int pageStart,int pageNum){} 方法
	 */ 
	public List getReverts(int pageStart, int pageNum) {
		String sql = "select * from reverts";
		return md.getReverts(sql, pageStart, pageNum);
	}

	/*
	 * 功能表示管理员通过MESSAGES表的id字段和REVERTS表的messageId字段之间的主外键关系删除删除相应的回复留言信息，该方法调用dao层的MessageDAO类中的public
	int deleteRevert(int status){}方法
	 */ 
	public int deleteRevert(int messageId, int status) {
		String sql = "delete from reverts where messageId="+messageId;
		return md.deleteRevert(sql, 0);
	}

	/*
	 * 功能表示管理员删除所有回复留言，该方法调用dao层的MessageDAO类中的public int deleteAllRevert(String
	 sql){}方法
	 */ 
	public int deleteAllRevert() {
		String sql = "delete from Reverts";
		return md.deleteAllRevert(sql);
	}

	/*
	 * 功能表示管理员通过REVERT表的id字段以及MESSAGES表的id字段和REVERTS表的messageId字段之间的主外键关系删除删除相应的一条回复留言信息，该方法调用dao层的MessageDAO类中public
	int deleteRevert(String sql){}方法
	 */ 
	public int deleteRevert(int reverteId) {
		String sql = "delete from reverts where id="+reverteId;
		return md.deleteRevert(sql);
	}

	public Revert getRevert(int revertId,int messageid){
		String sql="select * from reverts where id='"+revertId+"' and messageid="+messageid+"";
		return md.getRevert(sql);
	}
	
	
	public int getCount(){
		String sql = "select count(*) from messages";
		md.getCount(sql);
		return md.getNum();
	}
	
	public List nextPage(int page){
		String sql = "select * from messages order by sendDate desc";
		System.out.println("aaaaaaaaa"+sql);
		return md.nextPage(sql, page);
	}
	
	public static void main(String[] ages){
		//添加留言信息
		Message message=new Message();
//		message.setSendName("zhang");
//		message.setTitle("nihao");
//		message.setContent("aaaaaaaaaaaaaaaaaaa");
//		
		MessageService ms=new MessageService();
//		ms.saveMessage(message);
//		ms.getMessage(1);
//		System.out.println(ms.getMessage(1).getSendName());
		//查询所有的留言
//		List list=ms.getMessages();
//		Iterator it=list.iterator();
//		while(it.hasNext()){
//			Message me=(Message)it.next();
//			System.out.println(me.getId());
//		}
		//添加回复信息
//		Revert r=new Revert();
//		r.setMessageId(7);
//		r.setSendName("刘晶");
//		r.setTitle("傻子");
//		r.setContent("你是大傻子");
//		ms.saveRevert(r);
//		System.out.println(ms.saveRevert(r));
//		r=ms.getRevert(2, 1);
//		System.out.println(r.getSendName());
		//查询所有回复信息
//		List list1=ms.getAllReverts();
//		Iterator it1=list.iterator();
//		while(it.hasNext()){
//			Revert r1=(Revert)it.next();
//			System.out.println(r1.getContent());
//		}
//		
//		//测试删除留言
//		ms.deleteMessage(5);
//		System.out.println();
		//ms.deleteRevert(3);
		//ms.deleteAllMessage();
		//ms.deleteAllRevert();
		//ms.deleteRevert(7, 0);
		List list1=ms.getReverts(2,2);
		Iterator it1=list1.iterator();
		while(it1.hasNext()){
			Revert me=(Revert)it1.next();
			System.out.println(me.getSendName());
		}
		
	}
}
