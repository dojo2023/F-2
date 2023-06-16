package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Idpw;

public class NewRegistDAO {
	public boolean AllExist(Idpw all) {
		//処理を書く
		Connection conn = null;
		boolean all_check = false;
		try {
			Class.forName("org.h2.Driver");
			conn = DriverManager.getConnection("jdbc:h2:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			String sql = "select count(*) from USER where ID = ? AND PW = ? AND ANSWER = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, all.getId());
			pStmt.setString(2, all.getPw());
			pStmt.setString(3, all.getAnswer());

			ResultSet rs = pStmt.executeQuery();

			rs.next();
			if (rs.getInt("count(*)") == 1) {
				all_check = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			all_check = false;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			all_check = false;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					all_check = false;
				}
			}
		}
		return all_check;
	}
}