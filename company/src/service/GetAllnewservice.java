package service;

import java.util.List;

import dao.GetAllnews;


public class GetAllnewservice {
	/*
	 * 查询共有多少条新闻信息
	 */
	public int getCount(){
		String sql = "select count(*) from news";
		GetAllnews  ga=new GetAllnews();
		ga.getCount(sql);
		return ga.getNum();
	}
	/*
	 * 查询所有的新闻信息并排序
	 */
	public List getPageList(int page){
		String sql = "select * from news order by writerDate desc";
		GetAllnews  ga=new GetAllnews();
		return ga.getPageList(sql, page);
	}
}
