package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AnalysisDAO {
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

	public int insertResult(AnalysisDTO dto) {
		int cnt = 0;

		try {
			
			getConnection();
			String sql = "insert into ANALYSIS_RESULT values(anal_result_seq.nextval,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getOriginal_data());
			psmt.setString(3, dto.getScore_public());
			psmt.setString(4, dto.getScore_spec());
			psmt.setString(5, dto.getScore_insurt());

			psmt.setString(6, dto.getResult());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<AnalysisDTO> selectResult(String id){
		ArrayList<AnalysisDTO> list = new ArrayList<AnalysisDTO>();
		
		try {
			getConnection();
			String sql="select* from ANALYSIS_RESULT where MEMBER_ID=?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs=psmt.executeQuery();
			while(rs.next()) {
				int an_cd=rs.getInt(1);
				String an_id=rs.getString(2);
				String an_data=rs.getString(3);
				String an_public=rs.getString(4);
				String an_spec=rs.getString(5);
				String an_insult=rs.getString(6);
				String an_result=rs.getString(7);
				
				AnalysisDTO dto=new AnalysisDTO(an_id, an_data, an_insult, an_public, an_spec, an_result);
			list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
}
