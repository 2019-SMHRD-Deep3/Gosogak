package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private static MemberDAO dao;
	private MemberDAO() {
		
	}
	
	public static MemberDAO getDAO() {
		if(dao == null) {
			dao = new MemberDAO();
		}
		return dao;
	}
	
	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "gosogak";
			String db_pw = "gosogak";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void close() {
		try {
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int join(MemberDTO dto) {

		int cnt = 0;

		try {

			getConnection();
			String sql = "insert into MEMBER values(?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getNm());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, "user");
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
		
	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		
		String l_id = null;
		String l_pw = null;
		String l_name = null;
		String l_email = null;
		String l_grade = null;


		try {
			getConnection();

			String sql = "select * from MEMBER where MEMBER_ID=? and MEMBER_PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				// rs.getString(1);
				// rs.getString(2);
				// rs.getString(3);
				l_id = rs.getString("MEMBER_ID");
				l_pw = rs.getString("MEMBER_PW");
				l_name = rs.getString("MEMBER_NM");
				l_email = rs.getString("MEMBER_EMAIL");
				l_grade = rs.getString("MEMBER_GRADE");
				
//				System.out.println(l_id);
//				System.out.println(l_name);
//				System.out.println(l_email);
//				System.out.println(l_grade);
				info = new MemberDTO(l_id,l_pw,l_name,l_email,l_grade);
//				System.out.println(info.getId());
//				System.out.println(info.getGrade());
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return info;
	}
	
	public int updateUser(MemberDTO dto) {
		int cnt = 0;
		
		
		try {
			getConnection();
			String sql = "update MEMBER set MEMBER_PW=?,MEMBER_NM=?,MEMBER_EMAIL=? where MEMBER_ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPw());
			psmt.setString(2, dto.getNm());
			psmt.setString(3, dto.getEmail());
			psmt.setString(4, dto.getId());
			
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
				
		return cnt;
	}

}
