package ch12;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import ch11.DBConnectionMgr;
import ch11.RegisterBean;

public class RegisterMgr2 {

	private DBConnectionMgr pool;
	Connection con = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	RegisterBean regBean = null;

	public RegisterMgr2() {
		try {
			pool = DBConnectionMgr.getInstance();
			/* con = pool.getConnection(); */
			/* System.out.println("con: " + con); */
		} catch (Exception e) {
			System.out.println("Error : 커넥션 연결 실패");
		}
	}

	public RegisterBean getName(String id) throws SQLException {
		regBean = new RegisterBean();

		/* String strQuery = "select name from customer_2 where id= "+"'"+ id +"'"; */
		String strQuery = "select name from customer_2 where id=" + "'" + id + "'";
		System.out.println(strQuery);
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(strQuery);
			while (rs.next()) {
				regBean.setName(rs.getString("name"));
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}

		return regBean;
	}

	public boolean loginRegister(String id, String pwd, String phone) {

		boolean loginCon = false;
		try {
			con = pool.getConnection();
			String query = "select count(*) from customer_2 where id = ? and pwd = ? and phone = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, phone);

			rs = pstmt.executeQuery();

			if (rs.next() && rs.getInt(1) > 0) {
				loginCon = true;
			}

		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			try {
				pool.freeConnection(con, pstmt, rs);
				/*
				 * pstmt.close(); rs.close();
				 */
			} catch (Exception e) {
				// TODO: handle exception

			}

		}
		System.out.println(loginCon);
		return loginCon;
	}
}
