package com.model;

public class AnalysisDTO {
	private String result_cd;
	private String id;
	private String original_data;
	private int score_public;
	private int score_spec;
	private int score_insert;
	private String result;
	
	
	public AnalysisDTO(String result_cd, String id, String original_data, int score_public, int score_spec,
			int score_insert, String result) {
		super();
		this.result_cd = result_cd;
		this.id = id;
		this.original_data = original_data;
		this.score_public = score_public;
		this.score_spec = score_spec;
		this.score_insert = score_insert;
		this.result = result;
	}


	public String getResult_cd() {
		return result_cd;
	}


	public void setResult_cd(String result_cd) {
		this.result_cd = result_cd;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getOriginal_data() {
		return original_data;
	}


	public void setOriginal_data(String original_data) {
		this.original_data = original_data;
	}


	public int getScore_public() {
		return score_public;
	}


	public void setScore_public(int score_public) {
		this.score_public = score_public;
	}


	public int getScore_spec() {
		return score_spec;
	}


	public void setScore_spec(int score_spec) {
		this.score_spec = score_spec;
	}


	public int getScore_insert() {
		return score_insert;
	}


	public void setScore_insert(int score_insert) {
		this.score_insert = score_insert;
	}


	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
	}
	
	
}
