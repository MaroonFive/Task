package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.DBConn;
import entity.Product;

public class ProductDAO {

	private Connection con;

	private PreparedStatement ps;

	private ResultSet rs;
	
	private Statement stmt;

	//功能表示用户或管理员查询商品信息，页面显示的条数
	public List getPageList(String sql, int page) {
		int pageNume = 5;//每页只显示5条信息
		con = DBConn.getConn();//连接数据库
		try {
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);//必须写
			rs = stmt.executeQuery(sql);
			if (page == 1) {
				rs.beforeFirst();
			} else {
				rs.absolute((page - 1) * pageNume);
			}
			List list = new ArrayList();
			for (int i = 0; i < pageNume && rs.next(); i++) {
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setSerialNumber(rs.getString(2));
				product.setProductName(rs.getString(3));
				product.setBrand(rs.getString(4));
				product.setModel(rs.getString(5));
				product.setPrice(rs.getDouble(6));
				product.setPicture(rs.getString(7));
				product.setDesciption(rs.getString(8));
				list.add(product);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}

	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public void getCount(String sql) {
		con = DBConn.getConn();
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				this.num = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}

	//功能表示用户或管理员通过Product的id字段查询相对的一条商品记录
	public Product getProduct(String sql) {
		con = DBConn.getConn();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			Product product = null;
			if (rs.next()) {
				product = new Product();
				product.setProductId(rs.getInt(1));
				product.setSerialNumber(rs.getString(2));
				product.setProductName(rs.getString(3));
				product.setBrand(rs.getString(4));
				product.setModel(rs.getString(5));
				product.setPrice(rs.getDouble(6));
				product.setPicture(rs.getString(7));
				product.setDesciption(rs.getString(8));
			}
			return product;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}

	//功能表示管理员或用户查询所有商品记录
	public List getProducts(String sql) {
		con = DBConn.getConn();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			List list = new ArrayList();
			Product product = null;
			while (rs.next()) {
				product = new Product();
				product.setProductId(rs.getInt(1));
				product.setSerialNumber(rs.getString(2));
				product.setProductName(rs.getString(3));
				product.setBrand(rs.getString(4));
				product.setModel(rs.getString(5));
				product.setPrice(rs.getDouble(6));
				product.setPicture(rs.getString(7));
				product.setDesciption(rs.getString(8));

				list.add(product);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}

	//功能表示管理员通过Product的id字段更新一条商品信息
	public int updateProduct(Product product, String sql) {
		con = DBConn.getConn();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, product.getSerialNumber());
			ps.setString(2, product.getProductName());
			ps.setString(3, product.getBrand());
			ps.setString(4, product.getModel());
			ps.setDouble(5, product.getPrice());
			ps.setString(6, product.getPicture());
			//ps.setString(7, product.getDesciption());
			ps.setInt(7, product.getProductId());

			int num = ps.executeUpdate();
			System.out.println(num);
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		} finally {
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}

	//功能表示管理员删除所有商品记录
	public int deleteAllProduct(String sql) {
		con = DBConn.getConn();
		try {
			ps = con.prepareStatement(sql);
			int num = ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		} finally {
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}

	//功能表示管理员通过商品表的id字段删除一条商品信息
	public int deleteProduct(String sql) {
		con = DBConn.getConn();
		try {
			ps = con.prepareStatement(sql);
			int num = ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		} finally {
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}

	//功能表示管理员可添加一条商品信息到商品表
	public int saveProduct(Product product, String sql) {
		con = DBConn.getConn();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, product.getSerialNumber());
			ps.setString(2, product.getProductName());
			ps.setString(3, product.getBrand());
			ps.setString(4, product.getModel());
			ps.setDouble(5, product.getPrice());
			ps.setString(6, product.getPicture());
			ps.setString(7, product.getDesciption());
			int num = ps.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		} finally {
			DBConn.closeRs(rs);
			DBConn.closeSt(ps);
			DBConn.closeConn(con);
		}
	}

}
