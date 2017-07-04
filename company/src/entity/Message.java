package entity;

import java.io.Serializable;
import java.util.Date;

public class Message implements Serializable {
	/*
	 *  标识列，主键
	 */
	private int id; 

	private String sendName; // 发送消息用户名

	private String title; // 消息标题

	private String content; // 消息内容

	private String sendTime; // 发帖时间
	
	private int revertNum;  //回复消息次数

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
