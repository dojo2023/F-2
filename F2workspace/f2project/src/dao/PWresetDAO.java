package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Idpw;

public class PWresetDAO {
	public boolean IdExist(Idpw id) {
		Connection conn = null;
		boolean id_check = false;
		try {
			Class.forName("org.h2.Driver");
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			String sql = "select count(*) from USER where ID = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, id.getId());

			ResultSet rs = pStmt.executeQuery();

			rs.next();
			if (rs.getInt("count(*)") == 1) {
				id_check = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			id_check = false;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			id_check = false;
		}
		finally {
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					id_check = false;
				}
			}
		}
		return id_check;
	}

	public boolean AnsExist(String id, String answer) {
		Connection conn = null;
		boolean ans_check = false;
		try {
			Class.forName("org.h2.Driver");
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			String sql = "select count(*) from USER where ID = ? AND ANSWER = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, id);
			pStmt.setString(2, answer);

			ResultSet rs = pStmt.executeQuery();

			rs.next();
			if (rs.getInt("count(*)") == 1) {
				ans_check = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			ans_check = false;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			ans_check = false;
		}
		finally {
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					ans_check = false;
				}
			}
		}
		return ans_check;
	}

	public boolean PWupdate(String pw, String id) {
		Connection conn = null;
		boolean pwup = false;
		try {
			Class.forName("org.h2.Driver");
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			String sql = "UPDATE USER SET PW = ? WHERE ID = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			if(pw != null && !pw.equals("")) {
				pStmt.setString(1, pw);
			}
			else {
				pStmt.setString(1, null);
			}

			pStmt.setString(2, id);

			if (pStmt.executeUpdate() == 1) {
				pwup = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			pwup = false;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			pwup = false;
		}
		finally {
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					pwup = false;
				}
			}
		}
		return pwup;
	}
}