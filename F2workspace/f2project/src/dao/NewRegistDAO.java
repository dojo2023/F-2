package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class NewRegistDAO {
	public boolean IdExist(String id) {
		Connection conn = null;
		boolean id_check = false;
		try {
			Class.forName("org.h2.Driver");
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			String sql = "select count(*) from USER where ID = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, id);

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
}