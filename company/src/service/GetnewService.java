package service;

import java.util.List;

import dao.GetnewsDao;
import dao.Userdao;
import entity.News;

public class GetnewService {
	GetnewsDao   gd=new GetnewsDao();
	/*
	 * 功能表示用户或管理员查询所有新闻消息，该方法调用dao层的NewsDAO类中的public List getNews(String sql){}方法
	 */
public  List  getnews()
{
String sql="select  Top 7 *   from  news";	
 return gd.getnews(sql);

}	
/*
 * 功能表示通过NEWS 表的newsId字段查询单个新闻消息，该方法调用dao层的NewsDAO类中的public News getNew (String sql){} 方法 
 */
public  News  getnew(int id)
{
String sql="select  *  from  news  where  newId='"+id+"'";	
return  gd.getnew(sql);

}
/*
 * 功能表示管理员通过NEWS 表的newsId字段更新新闻记录，该方法调用dao层的NewsDAO类中的public int updateNew(News news,String sql){}方法
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
