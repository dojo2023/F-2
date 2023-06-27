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
			String sql = "select SPOT.ID, SPOT.DATE, SPOT.GENRE, SPOT.NAME, SPOT.ADDRESS, SPOT.REMARKS, IMAGE from SPOT inner join IMG on IMG.id = SPOT.id WHERE DATE LIKE ? AND GENRE LIKE ? AND NAME LIKE ? AND ADDRESS LIKE ? AND REMARKS LIKE ?";
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
				pStmt.setString(3, "%" + card.getName() + "%");
			}
			else {
				pStmt.setString(3, "%");
			}
			if (card.getAddress() != null && !card.getAddress().equals("")) {
				pStmt.setString(4, "%" + card.getAddress() + "%");
			}
			else {
				pStmt.setString(4, "%");
			}
				pStmt.setString(5, "%");

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Spot cardlist = new Spot(rs.getString("Id"),rs.getString("Date"),rs.getString("Genre"),rs.getString("Name"),
				rs.getString("Address"),
				rs.getString("Remarks"),
				rs.getString("Image"));
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

	public void insert(Spot card) {
		Connection conn = null;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "insert into SPOT(DATE,GENRE,NAME,ADDRESS,REMARKS) values (?, ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (card.getDate() != null && !card.getDate().equals("")) {
				pStmt.setString(1, card.getDate());
			}
			else {
				pStmt.setString(1, null);
			}
			if (card.getGenre() != null && !card.getGenre().equals("")) {
				pStmt.setString(2, card.getGenre());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getName() != null && !card.getName().equals("")) {
				pStmt.setString(3, card.getName());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getAddress() != null && !card.getAddress().equals("")) {
				pStmt.setString(4, card.getAddress());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getRemarks() != null && !card.getRemarks().equals("")) {
				pStmt.setString(5, card.getRemarks());
			}
			else {
				pStmt.setString(5, null);
			}

			// SQL文を実行する
			pStmt.executeUpdate();
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
	}

	public Integer selectid() {
		Connection conn = null;
		Integer max = 1;
		try {
			// JDSpotドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "select MAX(ID) AS max from SPOT";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			rs.next();
			max = rs.getInt("max");
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
		return max;
	}


	public void insertimg(String max, String image) {
		Connection conn = null;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "insert into IMG values(?,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
				pStmt.setString(1, max);
				pStmt.setString(2, image);

			// SQL文を実行する
			pStmt.executeUpdate();
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
	}

// 引数cardで指定されたレコードを更新し、成功したらtrueを返す(スポット情報更新)
	public boolean update(Spot card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "update SPOT set DATE=?, GENRE=?, NAME=?, ADDRESS=?, REMARKS=? where ID=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (card.getDate() != null && !card.getDate().equals("")) {
				pStmt.setString(1, card.getDate());
			}
			else {
				pStmt.setString(1, null);
			}

			if (card.getGenre() != null && !card.getGenre().equals("")) {
				pStmt.setString(2, card.getGenre());
			}
			else {
				pStmt.setString(2, null);
			}

			if (card.getName() != null && !card.getName().equals("")) {
				pStmt.setString(3, card.getName());
			}
			else {
				pStmt.setString(3, null);
			}

			if (card.getAddress() != null && !card.getAddress().equals("")) {
				pStmt.setString(4, card.getAddress());
			}
			else {
				pStmt.setString(4, null);
			}

			if (card.getRemarks() != null && !card.getRemarks().equals("")) {
				pStmt.setString(5, card.getRemarks());
			}
			else {
				pStmt.setString(5, null);
			}

			if (card.getId() != null && !card.getId().equals("")) {
				pStmt.setString(6, card.getId());
			}
			else {
				pStmt.setString(6, null);
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

	// 引数numberで指定されたレコードを削除し、成功したらtrueを返す
	public boolean delete(String id) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6/F2workspace/data/F2Database", "f2", "");

			// SQL文を準備する
			String sql = "delete from SPOT where ID=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setString(1, id);

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





