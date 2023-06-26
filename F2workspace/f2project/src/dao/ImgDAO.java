package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Spot;

public class ImgDAO {
	public List<String> select(Spot img) {
		Connection conn = null;
		List<String> idlist = new ArrayList<String>();
		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "select * from SPOT WHERE DATE LIKE ? AND GENRE LIKE ? AND NAME LIKE ? AND ADDRESS LIKE ? AND REMARKS LIKE ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			if (img.getDate() != null && !img.getDate().equals("")) {
				pStmt.setString(1, "%" + img.getDate() + "%");
			}
			else {
				pStmt.setString(1, "%");
			}
			if (img.getGenre() != null && !img.getGenre().equals("")) {
				pStmt.setString(2, img.getGenre());
			}
			else {
				pStmt.setString(2, "%");
			}
			if (img.getName() != null && !img.getName().equals("")) {
				pStmt.setString(3, "%" + img.getName() + "%");
			}
			else {
				pStmt.setString(3, "%");
			}
			if (img.getAddress() != null && !img.getAddress().equals("")) {
				pStmt.setString(4, "%" + img.getAddress() + "%");
			}
			else {
				pStmt.setString(4, "%");
			}
			if (img.getRemarks() != null && !img.getRemarks().equals("")) {
				pStmt.setString(5, img.getRemarks());
			}
			else {
				pStmt.setString(5, "%");
			}

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				String img2 = rs.getString("ID");
				idlist.add(img2);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			idlist = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			idlist = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					idlist = null;
				}
			}
		}

		// 結果を返す
		return idlist;
	}
	public List<String> selectmemory(Spot img) {
		Connection conn = null;
		List<String> idlist = new ArrayList<String>();
		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "select ID from SPOT WHERE GENRE = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (img.getGenre() != null && !img.getGenre().equals("")) {
				pStmt.setString(1, img.getGenre());
			}

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				String card2 = rs.getString("ID");
				idlist.add(card2);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			idlist = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			idlist = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					idlist = null;
				}
			}
		}

		// 結果を返す
		return idlist;
	}

	public List<String> select1yearago(Spot img) {
		Connection conn = null;
		List<String> idlist = new ArrayList<String>();
		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "select ID from SPOT WHERE DATE = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (img.getDate() != null && !img.getDate().equals("")) {
				pStmt.setString(1, "%" + img.getDate() + "%");
			}

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				String card2 = rs.getString("ID");
				idlist.add(card2);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			idlist = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			idlist = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					idlist = null;
				}
			}
		}

		// 結果を返す
		return idlist;
	}

	public List<String> selectimg(String id) {
		Connection conn = null;
		List<String> imglist = new ArrayList<String>();
		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "select IMAGE from IMG WHERE ID = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setString(1, id);



			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				String img = rs.getString("IMAGE");
				imglist.add(img);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			imglist = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			imglist = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					imglist = null;
				}
			}
		}

		// 結果を返す
		return imglist;
	}
}
