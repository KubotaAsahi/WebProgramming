package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import model.User;

public class NewUserDao {

	public User findByLoginInfo(String loginId,String name,Date birthDate,String password)  {

		Connection conn = null;

		try {
			//データベース接続
			conn = DBManager.getConnection();

			//INSERT文を準備
			String sql = "INSERT INTO user VALUES (login_id = ? and password = ? and "
					+ " name = ? and birth_date = ?)";

			//INSERT文を実行
			Statement stmt = conn.createStatement();

			int result = stmt.executeUpdate(sql);

			//追加された行数を出力

			System.out.println(result);

			stmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			//データベース切断
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
}
