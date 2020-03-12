package com.model;

public class MemberDTO {
	private String id;
	private String pw;
	private String nm;
	private String email;
	private String grade;

	

	// 회원가입 객체
	public MemberDTO(String id, String pw, String nm, String email) {

		this.id = id;
		this.pw = pw;
		this.nm = nm;
		this.email = email;
	}

	
	// 로그인
	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
		

	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getNm() {
		return nm;
	}


	public void setNm(String nm) {
		this.nm = nm;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
}
