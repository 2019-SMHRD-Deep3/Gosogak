package com.model;

public class MemberDTO {
	private String id;
	private String pw;
	private String nm;
	private String email;
	private String grade;

	
	
	public MemberDTO(String id, String pw, String nm, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.nm = nm;
		this.email = email;
	}


	public MemberDTO(String id, String pw, String nm, String email, String grade) {
		super();
		this.id = id;
		this.pw = pw;
		this.nm = nm;
		this.email = email;
		this.grade = grade;
	}


	public MemberDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	

	public MemberDTO(String nm, String email, String grade) {
		super();
		this.nm = nm;
		this.email = email;
		this.grade = grade;
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
