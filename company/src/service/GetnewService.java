package service;

import java.util.List;

import dao.GetnewsDao;
import dao.Userdao;
import entity.News;

public class GetnewService {
	GetnewsDao   gd=new GetnewsDao();
	/*
	 * ���ܱ�ʾ�û������Ա��ѯ����������Ϣ���÷�������dao���NewsDAO���е�public List getNews(String sql){}����
	 */
public  List  getnews()
{
String sql="select  Top 7 *   from  news";	
 return gd.getnews(sql);

}	
/*
 * ���ܱ�ʾͨ��NEWS ���newsId�ֶβ�ѯ����������Ϣ���÷�������dao���NewsDAO���е�public News getNew (String sql){} ���� 
 */
public  News  getnew(int id)
{
String sql="select  *  from  news  where  newId='"+id+"'";	
return  gd.getnew(sql);

}
/*
 * ���ܱ�ʾ����Աͨ��NEWS ���newsId�ֶθ������ż�¼���÷�������dao���NewsDAO���е�public int updateNew(News news,String sql){}����
 */
public int UpdateNews(String title,String content)
{
String sql="insert into news values('"+title+"','"+content+"',getdate())";
Userdao  ud=new Userdao();
return ud.updateuser(sql);
}

public int shanNews(int id)
{
String sql="delete from news where newId='"+id+"'";
Userdao  ud=new Userdao();
return ud.updateuser(sql);
}

}
