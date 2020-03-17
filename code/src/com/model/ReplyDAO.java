package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReplyDAO {
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

	// ´ñ±Û ÀÛ¼º
	public int insertReply(ReplyDTO dto) {

		int cnt = 0;

		try {

			getConnection();

			String sql = "insert into REPLY values(reply_seq.nextval,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getPost_cd());
			psmt.setString(2, dto.getReply_id());
			psmt.setString(3, dto.getReply_content());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}

	// ´ñ±Û Ãâ·Â
	public ArrayList<ReplyDTO> selectReply(int post_cd) {
		ArrayList<ReplyDTO> list = new ArrayList<ReplyDTO>();

		try {
			getConnection();
			String sql = "select * from REPLY where POST_CD=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, post_cd);
			rs = psmt.executeQuery();
			while (rs.next()) {
				int reply_cd = rs.getInt(1);
				String reply_id = rs.getString(3);
				String reply_content = rs.getString(4);
				ReplyDTO dto = new ReplyDTO(reply_cd, post_cd, reply_id, reply_content);
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
	
}
