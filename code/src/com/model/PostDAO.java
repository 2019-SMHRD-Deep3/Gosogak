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

			String sql = "insert into POST values(post_seq.nextval,?,?,sysdate,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPost_title());
			psmt.setString(2, dto.getPost_content());
			psmt.setString(3, dto.getPost_id());
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

				PostDTO dto = new PostDTO(post_cd, post_title, post_content, post_dt, post_id);
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

	// 게시글 목록
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
				String post_content = rs.getString(3);
				String post_dt = rs.getString(4);
				String post_id = rs.getString(5);

				PostDTO dto = new PostDTO(post_cd, post_title, post_content, post_dt, post_id);
				list.add(dto);
//				System.out.println(list.get(0).getPost_cd());
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// 게시글 클릭
	public PostDTO selectOne(int post_cd) {
		PostDTO p_info = null;
		
		String post_title = null;
		String post_content = null;
		String post_id = null;
		String post_dt = null;

		try {

			getConnection();
			String sql = "select * from POST where POST_CD=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, post_cd);
			rs = psmt.executeQuery();
			if (rs.next()) {
				
				post_title = rs.getString("POST_TITLE");
				post_content = rs.getString("POST_CONTENT");
				post_dt = rs.getString("POST_DT");
				post_id = rs.getString("MEMBER_ID");
				p_info = new PostDTO(post_cd,post_title,post_content,post_dt,post_id);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return p_info;

	}
//		public ArrayList<PostDTO> selectOne(int post_cd) {
//			ArrayList<PostDTO> list = new ArrayList<PostDTO>();
//
//			try {
//				getConnection();
//				String sql = "select * from POST where POST_CD=?";
//				psmt = conn.prepareStatement(sql);
//				psmt.setInt(1, post_cd);
//				rs = psmt.executeQuery();
//				while (rs.next()) {
//					String post_title = rs.getString(2);
//					String post_content = rs.getString(3);
//					String post_dt = rs.getString(4);
//					String post_id = rs.getString(5);
//
//					PostDTO dto = new PostDTO(post_cd, post_title, post_content, post_id, post_dt);
//					list.add(dto);
//				}
//
//			} catch (SQLException e) {
//
//				e.printStackTrace();
//			} finally {
//				close();
//			}
//			System.out.println("담는중");
//			return list;
//		}
}
