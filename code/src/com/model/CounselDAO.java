package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CounselDAO {

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
	
	public int insertCounsel(CounselDTO dto) {
		int cnt=0;
		
		try {
			getConnection();
			String sql="insert into COUNSELING values(couns_saq.nextval,?,?,?,?,sysdate)";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, dto.getCounsel_id());
			psmt.setString(2, dto.getCounsel_manager());
			psmt.setString(3, dto.getCounsel_title());
			psmt.setString(4, dto.getCounsel_content());
			cnt=psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<CounselDTO> selectCounsel(String id) {
		ArrayList<CounselDTO> counselList=new ArrayList<CounselDTO>();
		try {
			getConnection();
			String sql="select * from COUNSELING where MEMBER_ID=?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs=psmt.executeQuery();
			while(rs.next()) {
				int counsel_cd=rs.getInt(1);
				String counsel_id=rs.getString(2);
				String counsel_manager=rs.getString(3);
				String counsel_title=rs.getString(4);
				String counsel_content=rs.getString(5);
				String counsel_dt=rs.getString(6);
				
				CounselDTO dto=new CounselDTO(counsel_cd, counsel_id, counsel_manager, counsel_title, counsel_content, counsel_dt);
				counselList.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return counselList;
	}

}
