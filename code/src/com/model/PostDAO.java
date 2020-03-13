package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PostDAO {
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
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// 게시글 작성
	public int insertPost(PostDTO dto) {

		int cnt = 0;

		try {

			getConnection();

			String sql = "insert into POST values(num.nextval,?,?,sysdate,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPost_title());
			psmt.setString(2, dto.getPost_content());
			psmt.setString(3, dto.getPost_id());
			psmt.setString(4, dto.getPost_result());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}

	// 게시글 작성 내역
	public ArrayList<PostDTO> selectPost(String id) {
		ArrayList<PostDTO> list = new ArrayList<PostDTO>();

		try {
			getConnection();
			String sql = "select * from POST where MEMBER_ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while (rs.next()) {
				int post_cd = rs.getInt(1);
				String post_title = rs.getString(2);
				String post_content = rs.getString(3);
				String post_dt = rs.getString(4);
				String post_id = rs.getString(5);
				String post_result = rs.getString(6);

				PostDTO dto = new PostDTO(post_cd, post_title, post_content, post_dt, post_id, post_result);
				list.add(dto);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public void deleteAll(String email) {
		
		try {

			getConnection();
			String sql = "delete from web_message where receive_email=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	public void delete(int num) {
		try {
			
			getConnection();
			String sql = "delete from web_message where num=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);
			psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	// 게시글 작성 내역
		public ArrayList<PostDTO> selectAll() {
			ArrayList<PostDTO> list = new ArrayList<PostDTO>();
			

			try {
				getConnection();
				String sql = "select * from POST";
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				while (rs.next()) {
					int post_cd = rs.getInt(1);
					String post_title = rs.getString(2);
					String post_dt = rs.getString(3);
					String post_id = rs.getString(4);
					

					PostDTO dto = new PostDTO(post_cd, post_title, post_dt, post_id);
					list.add(dto);
					System.out.println(list.get(0).getPost_cd());
				}

			} catch (SQLException e) {

				e.printStackTrace();
			} finally {
				close();
			}
			System.out.println("담는중");
			return list;
		}
}
