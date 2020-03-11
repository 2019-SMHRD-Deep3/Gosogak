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
	         psmt.setString(5,"user");
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
			String l_nm = null;
			String l_email = null;
			String l_grade = null;
			try {
				getConnection();

				String sql = "SELECT * FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_PW = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getPw());
				rs = psmt.executeQuery();

				if (rs.next()) {
					l_nm = rs.getString("MEMBER_NM");
					l_email = rs.getString("MEMBER_EMAIL");
					l_grade = rs.getString("MEMBER_GRADE");

					info = new MemberDTO(l_nm, l_email, l_grade);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {

				close();
			}
			return info;
		}

		public int update(MemberDTO dto) {
			MemberDTO info = dto;
			int cnt = 0;
			try {
				getConnection();

				String sql = "UPDATE MEMBER SET MEMBER_PW = ?, MEMBER_NM = ?, MEMBER_EMAIL = ? WHERE MEMBER_GRADE = ?";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getPw());
				psmt.setString(2, dto.getNm());
				psmt.setString(3, dto.getEmail());
				psmt.setString(4, dto.getGrade());
				cnt = psmt.executeUpdate();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close();

			}

			return cnt;
		}

		private static MemberDAO dao;
		   private MemberDAO() {
		      
		   }
		   
		 public static MemberDAO getDAO() {
		    if(dao == null) {
		       dao = new MemberDAO();
		      }
		      return dao;
		   }
}
