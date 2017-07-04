package entity;

import java.io.Serializable;

public class News implements Serializable {
	
	public  News(int newsId,String title,String content,String writerDate)
	{
		this.newsId=newsId;
		this.title=title;
		this.content=content;
		this.writerDate=writerDate;
		
	}
	
	private int newsId; // 标识列，主键

	private String title; // 新闻标题，不能为空

	private String content; // 新闻内容

	private String writerDate; // 发表日期

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriterDate() {
		return writerDate;
	}

	public void setWriterDate(String writerDate) {
		this.writerDate = writerDate;
	}

}
