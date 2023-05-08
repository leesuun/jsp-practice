package ch12;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import ch11.DBConnectionMgr;
import ch11.RegisterBean;

public class RegisterMgr3 {

	private DBConnectionMgr pool;
	Connection con = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	RegisterBean regBean = null;

	public RegisterMgr3() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("Error : 커넥션 연결 실패");
		}
	}

	public Vector<RegisterBean> getRegisterList() {

		Vector<RegisterBean> vlist = new Vector<RegisterBean>();
		try {
			String strQuery = "select * from customer_2";
			stmt = con.createStatement();
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
			pool.freeConnection(con);
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
			/*
			 * if (con != null) try { con.close(); } catch (SQLException e) { }
			 */
		}
		return vlist;
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

	public boolean loginRegister(String id, String pwd) {

		boolean loginCon = false;
		try {
			con = pool.getConnection();
			String query = "select count(*) from customer_2 where id = ? and pwd = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);

			rs = pstmt.executeQuery();

			if (rs.next() && rs.getInt(1) > 0) {
				loginCon = true;
			}

		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			try {
				pool.freeConnection(con, pstmt, rs);
				pstmt.close();
				rs.close();
			} catch (Exception e) {
				// TODO: handle exception

			}

		}
		System.out.println(loginCon);
		return loginCon;
	}
}