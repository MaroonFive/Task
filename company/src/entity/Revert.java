package entity;

import java.io.Serializable;
import java.util.Date;

public class Revert implements Serializable {
	private int id; // ��ʶ�У�����

	private int messageId; // ����ID�����

	private String sendName; // �ظ���Ϣ�û���

	private String title; // �ظ���Ϣ����

	private String content; // �ظ���Ϣ����

	private String sendTime; // �ظ���Ϣʱ��

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

	public int getMessageId() {
		return messageId;
	}

	public void setMessageId(int messageId) {
		this.messageId = messageId;
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
