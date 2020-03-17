package com.model;

public class ReplyDTO {
	private int reply_cd;
	private int post_cd;
	private String reply_id;
	private String reply_content;
	
	public ReplyDTO(int reply_cd, int post_cd, String reply_id, String reply_content){
		this.reply_cd = reply_cd;
		this.post_cd = post_cd;
		this.reply_id = reply_id;
		this.reply_content = reply_content;
	}
	
	public ReplyDTO(int post_cd, String reply_id, String reply_content) {
		this.post_cd = post_cd;
		this.reply_id = reply_id;
		this.reply_content = reply_content;
	}
	
	public int getReply_cd() {
		return reply_cd;
	}
	public int getPost_cd() {
		return post_cd;
	}
	public String getReply_id() {
		return reply_id;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_cd(int reply_cd) {
		this.reply_cd = reply_cd;
	}
	public void setPost_cd(int post_cd) {
		this.post_cd = post_cd;
	}
	public void setReply_id(String reply_id) {
		this.reply_id = reply_id;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	
}
