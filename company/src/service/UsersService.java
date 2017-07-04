package service;

import java.util.List;

import dao.UsersDAO;
import entity.User;

public class UsersService {
	/*
	 * ��֤�û���������͹���Ա�Ƿ���ȷ��Ȼ��������Ա����
	 */
	public User getuser(User user){
		String sql = "select * from users where username=? and password=? and status=1";
		UsersDAO ad = new UsersDAO();
		return ad.getUser(sql, user);
	}
	/*
	 * ��ӹ���Ա�û�
	 */
	public int saveUsers(User users){
		String sql="insert into users values(?,?,1)";
		UsersDAO ad = new UsersDAO();
		return ad.saveUsers(users, sql);
	}
	/*
	 * ͨ��idɾ��ĳ������Ա
	 */
	public int deleteUsers(int userid){
		String sql="delete from users where userid=" +userid;
		UsersDAO ad = new UsersDAO();
		return ad.deleteUsers(sql);
	}
	/*
	 * ��ѯ�����й���Ա
	 */
	public List getUsers(){
		String sql="select * from Users";
		UsersDAO ad = new UsersDAO();
		return ad.getUsers(sql);
	}

}
