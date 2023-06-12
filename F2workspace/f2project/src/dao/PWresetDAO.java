package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Idpw;

public class PWresetDAO {
	public boolean IdExist(Idpw id) {
		//処理を書く
		Connection conn = null;
		boolean id_chack = false;
		try {
			Class.forName("org.h2.Driver");
			conn = DriverManager.getConnection("jdbc:h2:C:/dojo6/F2workspace/data/F2DB", "f2", "");

			String sql = "select count(*) from USER where ID = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, id.getId());

			ResultSet rs = pStmt.executeQuery();

			rs.next();
			if (rs.getInt("count(*)") == 1) {
				id_chack = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			id_chack = false;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			id_chack = false;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					id_chack = false;
				}
			}
		}
		return id_chack;
	}
}