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

	// �s�W�|��
	void add(Member m);

	// Ū���|��
	String query();

	// �ק��s�|��
	void update(int id, Member m);

	// �R���|��
	void delete(int id);

}
