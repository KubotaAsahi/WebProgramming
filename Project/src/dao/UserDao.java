package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.User;

public class UserDao {

	  /**
     * ログインIDとパスワードに紐づくユーザ情報を返す
     * @param loginId
     * @param password
     * @return
     */
	public User findByLoginInfo(String loginId, String password) {
		Connection conn = null;
		try {
			//データベース接続
			conn = DBManager.getConnection();

			//SELECT文を準備
			String sql = "SELECT*FROM user WHERE login_id = ? and password = ?";

			//SELECT文を実行し結果表を取得
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, loginId);
			pStmt.setString(2, password);
			ResultSet rs = pStmt.executeQuery();

			//主キーに紐づくレコードは一件のみなので、rs.next()は一回だけ行う
			if(!rs.next()) {
				return null;
			}
			String loginIdData = rs.getString("login_Id");
			String nameData = rs.getString("name");
			return new User(loginIdData,nameData);

		}catch (SQLException e) {
			e.printStackTrace();
			return null;

		}finally {
			//データベース切断
			if(conn != null) {
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
					return null;

				}
			}
		}
	}
	//すべてのユーザ情報を取得する
	public List<User>findAll(){

		Connection conn = null;
		List<User> userList = new ArrayList<User>();

		try {
			//データベース接続
			conn = DBManager.getConnection();

			//SERECT文を準備
			// TODO: 未実装：管理者以外を取得するようSQLを変更する

				String spl = "SELECT*FROM user";

				//SERECT文を実行し、結果表を取得
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(spl);

				//結果表に格納されたレコードの内容を
				//Userインスタンスに設定し、ArreyListインスタンスに設定
				while(rs.next()) {
					int id = rs.getInt("id");
					String loginId = rs.getString("login_id");
					String name = rs.getString("name");
					Date birthDate = rs.getDate("dirth_dete");
					String password = rs.getString("password");
					String createDate = rs.getString("create_date");
					String updateDate = rs.getString("update_date");
					User user = new User(id,loginId,name,birthDate,password,createDate,updateDate);

					userList.add(user);
				}
		}catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
			//データベース切断try
			if(conn != null) {
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
	return userList;
	}
}











