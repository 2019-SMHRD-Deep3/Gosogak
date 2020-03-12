package com.model;

public class MemberDTO {
	private String id;
	private String pw;
	private String nm;
	private String email;
	private String grade;

	

	// ȸ������ ��ü
	public MemberDTO(String id, String pw, String nm, String email) {

		this.id = id;
		this.pw = pw;
		this.nm = nm;
		this.email = email;
	}

	
	// �α���
	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	
	// �α��� ����
	public MemberDTO(String id, String pw, String nm, String email, String grade) {

		this.id = id;
		this.pw = pw;
		this.nm = nm;
		this.email = email;
		this.grade = grade;
	}
	
	// �Ϲݻ���� ���� ����
	public MemberDTO(String pw, String nm, String email) {
		this.pw = pw;
		this.nm = nm;
		this.email = email;
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
