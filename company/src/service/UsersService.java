package service;

import java.util.List;

import dao.UsersDAO;
import entity.User;

public class UsersService {
	/*
	 * 验证用户名和密码和管理员是否正确，然后进入管理员界面
	 */
	public User getuser(User user){
		String sql = "select * from users where username=? and password=? and status=1";
		UsersDAO ad = new UsersDAO();
		return ad.getUser(sql, user);
	}
	/*
	 * 添加管理员用户
	 */
	public int saveUsers(User users){
		String sql="insert into users values(?,?,1)";
		UsersDAO ad = new UsersDAO();
		return ad.saveUsers(users, sql);
	}
	/*
	 * 通过id删除某个管理员
	 */
	public int deleteUsers(int userid){
		String sql="delete from users where userid=" +userid;
		UsersDAO ad = new UsersDAO();
		return ad.deleteUsers(sql);
	}
	/*
	 * 查询出所有管理员
	 */
	public List getUsers(){
		String sql="select * from Users";
		UsersDAO ad = new UsersDAO();
		return ad.getUsers(sql);
	}

}
