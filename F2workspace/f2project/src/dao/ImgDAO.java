package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Story;

public class ImgDAO {
	public List<String> select(Story img) {
		Connection conn = null;
		//List<Story> imglist = new ArrayList<Story>();
		List<String> imglist = new ArrayList<String>();
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
				String card = rs.getString("ID");
				imglist.add(card);
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
