package entity;

import java.io.Serializable;
import java.util.Date;

public class Revert implements Serializable {
	private int id; // 标识列，主键

	private int messageId; // 留言ID，外键

	private String sendName; // 回复消息用户名

	private String title; // 回复消息标题

	private String content; // 回复消息内容

	private String sendTime; // 回复消息时间

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
