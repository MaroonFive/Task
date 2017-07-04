package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConn {
	//加载驱动
	private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	//连接数据库
	private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=company";
	//数据库的用户名
	private static final String USER = "sa";
	//数据库密码
	private static final String PWD = "sa";
	static {
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public static Connection getConn() {
		try {
			return DriverManager.getConnection(URL, USER, PWD);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	//关闭Connection
	public static void closeConn(Connection con) {
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	//关闭Statement
	public static void closeSt(Statement st) {
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	//关闭结果集ResultSet
	public static void closeRs(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
