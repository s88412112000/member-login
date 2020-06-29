package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import model.Member;

public interface ImplDao {

	static Connection getDB() {
		String url = "jdbc:mysql://localhost:3306/gjun";
		String user = "root";
		String password = "1234";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, password);
			return conn;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}

	// 新增會員
	void add(Member m);

	// 讀取會員
	String query();

	// 修改更新會員
	void update(int id, Member m);

	// 刪除會員
	void delete(int id);

}
