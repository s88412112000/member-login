package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Member;

public class MemberDao implements ImplDao {
	
	public static Boolean queryUser(String username) {
		Connection conn=ImplDao.getDB();
		String sql="select * from member where username=?";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			
			ResultSet rs=ps.executeQuery();
			return rs.next();
			
		} catch (SQLException e) {

			e.printStackTrace();
			return null;
		}
	}
	
	
	public static Boolean queryMember(String username,String password) {
		Connection conn=ImplDao.getDB();
		String sql="select * from member where username=? and password=?";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			return rs.next();
			
		} catch (SQLException e) {

			e.printStackTrace();
			return null;
		}
	}
	

	@Override
	public void add(Member m) {
		String sql = "insert into member(name,username,password,phone,address) values (?,?,?,?,?)";
		Connection conn = ImplDao.getDB();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, m.getName());
			ps.setString(2, m.getUsername());
			ps.setString(3, m.getPassword());
			ps.setString(4, m.getPhone());
			ps.setString(5, m.getAddress());
			ps.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	@Override
	public String query() {
		Connection conn = ImplDao.getDB();
		String sql = "select * from member";
		String result="";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				result=result+"ID："+rs.getInt("id")+
						"	姓名："+rs.getString("name")+
						" 	帳號："+rs.getString("username")+
						"	密碼："+rs.getString("password")+
						"	電話："+rs.getString("phone")+
						"	地址："+rs.getString("address")+"<br>";
			}
			
			return result;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		 
	}

	@Override
	public void update(int id, Member m) {
		Connection conn=ImplDao.getDB();
		String sql="update member set name=?,password=?,phone=?,address=? where id=?";
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, m.getName());
			ps.setString(2, m.getPassword());
			ps.setString(3, m.getPhone());
			ps.setString(4, m.getAddress());
			ps.setInt(5, id);
			
			ps.executeUpdate();
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void delete(int id) {
		Connection conn=ImplDao.getDB();
		String sql="delete from member where id=?";
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,id);
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
		 
			e.printStackTrace();
		}
		

	}

	public static void main(String[] args) {
	 
		
		System.out.println(queryUser("uuu"));

	}

}
