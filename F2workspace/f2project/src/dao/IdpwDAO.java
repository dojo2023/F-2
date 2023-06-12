package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Idpw;
import model.Login;

public class IdpwDAO {

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

	public boolean isLoginOK(Login idpw) {
		Connection conn = null;
		boolean loginResult = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/meisi-DB", "sa", "");

			// SELECT文を準備する
			String sql = "select count(*) from IDPW where ID = ? and PW = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, idpw.getId());
			pStmt.setString(2,idpw.getPw());

			// SELECT文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// ユーザーIDとパスワードが一致するユーザーがいたかどうかをチェックする
			rs.next();
			if (rs.getInt("count(*)") == 1) {
				loginResult = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			loginResult = false;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			loginResult = false;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					loginResult = false;
				}
			}
		}

		// 結果を返す
		return loginResult;
	}

	public boolean insert(Idpw card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2DB", "f2", "");

			// SQL文を準備する
			String sql = "insert into USER values (?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (card.getId() != null && !card.getId().equals("")) {
				pStmt.setString(1, card.getId());
			}
			else {
				pStmt.setString(1, null);
			}
			if (card.getPw() != null && !card.getPw().equals("")) {
				pStmt.setString(2, card.getPw());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getAnswer() != null && !card.getAnswer().equals("")) {
				pStmt.setString(3, card.getAnswer());
			}
			else {
				pStmt.setString(3, null);
			}

			// SQL文を実行する
			if (pStmt.executeUpdate() == 1) {
				result = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		// 結果を返す
		return result;
	}

}