package service;

import java.util.List;

import dao.GetAllnews;


public class GetAllnewservice {
	/*
	 * ��ѯ���ж�����������Ϣ
	 */
	public int getCount(){
		String sql = "select count(*) from news";
		GetAllnews  ga=new GetAllnews();
		ga.getCount(sql);
		return ga.getNum();
	}
	/*
	 * ��ѯ���е�������Ϣ������
	 */
	public List getPageList(int page){
		String sql = "select * from news order by writerDate desc";
		GetAllnews  ga=new GetAllnews();
		return ga.getPageList(sql, page);
	}
}
