package ch11;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class RegisterMgr {
	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String JDBC_URL = "jdbc:mysql://127.0.0.1:3306/businessdb";
	private final String USER = "root";
	private final String PASS = "qkfkadml@12";
	private DBConnectionMgr pool = null;

	public RegisterMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
			Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error : JDBC 드라이버 로딩 실패");
			System.out.println("Error : " + e);
		}
	}

	public Vector<RegisterBean> getRegisterList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		Vector<RegisterBean> vlist = new Vector<RegisterBean>();
		try {
			conn = pool.getConnection();
			/* conn = DriverManager.getConnection(JDBC_URL, USER, PASS); */
			String strQuery = "select * from customer_2";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strQuery);

			while (rs.next()) {
				RegisterBean regBean = new RegisterBean();
				regBean.setId(rs.getString("id"));
				regBean.setPassword(rs.getString("pwd"));
				regBean.setName(rs.getString("name"));
				vlist.add(regBean);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception" + e);
		} finally {
			pool.freeConnection(conn);
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
				}
		}
		return vlist;
	}

}
