package com.model;

public class PostDTO {
	private int post_cd;
	private String post_title;
	private String post_content;
	private String post_dt;
	private String post_id;
	
	// 게시글 작성
	public PostDTO(String post_title, String post_content, String post_id) {
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_id = post_id;
	}

	// 작성 내역
	public PostDTO(int post_cd, String post_title, String post_content, String post_dt, String post_id){
		this.post_cd = post_cd;
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_dt = post_dt;
		this.post_id = post_id;
	}
	
	// 게시글 목록
	public PostDTO(int post_cd, String post_title, String post_dt, String post_id) {
		this.post_cd = post_cd;
		this.post_title = post_title;
		this.post_dt = post_dt;
		this.post_id = post_id;
	}
	
	// 게시글 조회
	public PostDTO(int post_cd) {
		this.post_cd = post_cd;
	}

	public int getPost_cd() {
		return post_cd;
	}
	public String getPost_title() {
		return post_title;
	}
	public String getPost_content() {
		return post_content;
	}
	public String getPost_dt() {
		return post_dt;
	}
	public String getPost_id() {
		return post_id;
	}
	public void setPost_cd(int post_cd) {
		this.post_cd = post_cd;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public void setPost_dt(String post_dt) {
		this.post_dt = post_dt;
	}
	public void setPost_id(String post_id) {
		this.post_id = post_id;
	}
	
}
