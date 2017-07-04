package service;

import java.util.Iterator;
import java.util.List;

import dao.MessageDAO;

import entity.Message;
import entity.Revert;

public class MessageService {
	MessageDAO md = new MessageDAO();

	/*
	 * ���ܱ�ʾ�û���������ԣ��÷�������dao���MessageDAO���е�public int saveMessage(Message message,String sql){}����
	 */ 
	public int saveMessage(Message message) {
		String sql = "insert into messages values(?,?,?,default,default)";
		System.out.println("sql:>>"+sql);
		return md.saveMessage(message, sql);
	}

	/*
	 * �޸�������Ϣ�Ļظ�����
	 */
	public int updateMessage(int id){
		String sql="update messages set revertNum=revertNum+1 where id="+id+"";
		System.out.println("sql:>>"+sql);
		return md.updateMessage(sql);
	}
	/*
	 * ���ܱ�ʾͨ��MESSAGES���id�ֶβ�ѯ�������Լ�¼���÷�������dao���MessageDAO���е�public Message
	 getMessage(String sql){} ����
	 */ 
	public Message getMessage(int messageId) {
		String sql = "select * from messages where id="+messageId;
		System.out.println("sql:>>"+sql);
		return md.getMessage(sql);
	}

	/*
	 * ���ܱ�ʾ��ѯ�������Լ�¼���÷�������dao���MessageDAO���е�public List getMessages(String
	 sql){}����
	 */ 
	public List getMessages() {
		String sql = "select * from messages";
		System.out.println("sql:>>"+sql);
		return md.getMessages(sql);
	}

	/*
	 * ���ܱ�ʾ�û������Ա��ѯ���Լ�¼,ҳ����ʾ����������ҳ��ʾ���÷�������dao���MessageDAO���е�public List
	 getMessages (String sql��int pageStart,int pageNum){} ����
	 */ 
	public List getMessages(int pageStart, int pageNum) {
		String sql = "select * from messages";
		System.out.println("sql:>>"+sql);
		return md.getMessages(sql, pageStart, pageNum);
	}

	/*
	 * ���ܱ�ʾ����Աɾ���������ԣ��÷�������dao���MessageDAO���е�public int deleteMessage(){}����
	 */ 
	public int deleteAllMessage() {
		String sql = "delete from messages";
		String sql1="delete from Reverts";
		System.out.println("sql:>>"+sql);
		System.out.println("sql:>>"+sql1);
		return md.deleteAllMessage(sql, sql1);
	}

	/*
	 * ���ܱ�ʾ����Ա����idɾ��һ�����ԣ��÷�������dao���MessageDAO���е�public int deleteMessage(String
	 sql){}����
	 */ 
	public int deleteMessage(int id) {
		String sql = "delete from REVERTS where messageId="+id;
		String sql1 = "delete from MESSAGES where id="+id;
		System.out.println("sql:>>"+sql);
		System.out.println("sql:>>"+sql1);
		return md.deleteMessage(sql,sql1,0);
	}

	/*
	 * ���ܱ�ʾ�û������Ա��ӻظ����ԣ��÷�������dao���MessageDAO���е�public int saveRevert(Revert revert,String sql){}����
	 */ 
	public int saveRevert(Revert revert) {
		String sql = "insert into reverts values(?,?,?,?,default)";
		 md.saveRevert(revert, sql);
		 return this.updateMessage(revert.getMessageId());
	}

	/*
	 * ���ܱ�ʾ��ѯ���лظ����Լ�¼���÷�������dao���MessageDAO���е�public List getAllReverts(String
	 sql){}����
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
	 * ���ܱ�ʾ�û������Ա��ѯ�ظ����Լ�¼,ҳ����ʾ����������ҳ��ʾ���÷�������dao���MessageDAO���е�public List
	 getReverts (String sql��int pageStart,int pageNum){} ����
	 */ 
	public List getReverts(int pageStart, int pageNum) {
		String sql = "select * from reverts";
		return md.getReverts(sql, pageStart, pageNum);
	}

	/*
	 * ���ܱ�ʾ����Աͨ��MESSAGES���id�ֶκ�REVERTS���messageId�ֶ�֮����������ϵɾ��ɾ����Ӧ�Ļظ�������Ϣ���÷�������dao���MessageDAO���е�public
	int deleteRevert(int status){}����
	 */ 
	public int deleteRevert(int messageId, int status) {
		String sql = "delete from reverts where messageId="+messageId;
		return md.deleteRevert(sql, 0);
	}

	/*
	 * ���ܱ�ʾ����Աɾ�����лظ����ԣ��÷�������dao���MessageDAO���е�public int deleteAllRevert(String
	 sql){}����
	 */ 
	public int deleteAllRevert() {
		String sql = "delete from Reverts";
		return md.deleteAllRevert(sql);
	}

	/*
	 * ���ܱ�ʾ����Աͨ��REVERT���id�ֶ��Լ�MESSAGES���id�ֶκ�REVERTS���messageId�ֶ�֮����������ϵɾ��ɾ����Ӧ��һ���ظ�������Ϣ���÷�������dao���MessageDAO����public
	int deleteRevert(String sql){}����
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
		//���������Ϣ
		Message message=new Message();
//		message.setSendName("zhang");
//		message.setTitle("nihao");
//		message.setContent("aaaaaaaaaaaaaaaaaaa");
//		
		MessageService ms=new MessageService();
//		ms.saveMessage(message);
//		ms.getMessage(1);
//		System.out.println(ms.getMessage(1).getSendName());
		//��ѯ���е�����
//		List list=ms.getMessages();
//		Iterator it=list.iterator();
//		while(it.hasNext()){
//			Message me=(Message)it.next();
//			System.out.println(me.getId());
//		}
		//��ӻظ���Ϣ
//		Revert r=new Revert();
//		r.setMessageId(7);
//		r.setSendName("����");
//		r.setTitle("ɵ��");
//		r.setContent("���Ǵ�ɵ��");
//		ms.saveRevert(r);
//		System.out.println(ms.saveRevert(r));
//		r=ms.getRevert(2, 1);
//		System.out.println(r.getSendName());
		//��ѯ���лظ���Ϣ
//		List list1=ms.getAllReverts();
//		Iterator it1=list.iterator();
//		while(it.hasNext()){
//			Revert r1=(Revert)it.next();
//			System.out.println(r1.getContent());
//		}
//		
//		//����ɾ������
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
