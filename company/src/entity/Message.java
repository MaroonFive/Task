package entity;

import java.io.Serializable;
import java.util.Date;

public class Message implements Serializable {
	/*
	 *  ��ʶ�У�����
	 */
	private int id; 

	private String sendName; // ������Ϣ�û���

	private String title; // ��Ϣ����

	private String content; // ��Ϣ����

	private String sendTime; // ����ʱ��
	
	private int revertNum;  //�ظ���Ϣ����

	public int getRevertNum() {
		return revertNum;
	}

	public void setRevertNum(int revertNum) {
		this.revertNum = revertNum;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSendName() {
		return sendName;
	}

	public void setSendName(String sendName) {
		this.sendName = sendName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSendTime() {
		return sendTime;
	}

	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}

}
