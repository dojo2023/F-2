package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Spot;

public class SpotDAO {
	public List<Spot> select(Spot card) {
		Connection conn = null;
		List<Spot> cardList = new ArrayList<Spot>();

		try {
			// JDSpotドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "select * from SPOT WHERE DATE LIKE ? AND GENRE LIKE ? AND NAME LIKE ? AND ADDRESS LIKE ? AND REMARKS LIKE ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (card.getDate() != null && !card.getDate().equals("")) {
				pStmt.setString(1, "%" + card.getDate() + "%");
			}
			else {
				pStmt.setString(1, "%");
			}
			if (card.getGenre() != null && !card.getGenre().equals("")) {
				pStmt.setString(2, card.getGenre());
			}
			else {
				pStmt.setString(2, "%");
			}
			if (card.getName() != null && !card.getName().equals("")) {
				pStmt.setString(3, card.getName());
			}
			else {
				pStmt.setString(3, "%");
			}
			if (card.getAddress() != null && !card.getAddress().equals("")) {
				pStmt.setString(4, card.getAddress());
			}
			else {
				pStmt.setString(4, "%");
			}
			if (card.getRemarks() != null && !card.getRemarks().equals("")) {
				pStmt.setString(5, card.getRemarks());
			}
			else {
				pStmt.setString(5, "%");
			}

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Spot cardlist = new Spot(rs.getString("Date"),rs.getString("Genre"),rs.getString("Name"),
				rs.getString("Address"),
				rs.getString("Remarks")
				);
				cardList.add(cardlist);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			cardList = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			cardList = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					cardList = null;
				}
			}
		}

		// 結果を返す
		return cardList;
	}
}
