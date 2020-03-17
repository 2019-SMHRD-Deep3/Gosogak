package com.model;

public class AnalysisDTO {
	private String id;
	private String original_data;
	private String score_public;
	private String score_spec;
	private String score_insult;
	private String result;
	
	

	public AnalysisDTO(String id, String original_data,String score_insult,String score_public, String score_spec,  String result) {
		super();
		this.id = id;
		this.original_data = original_data;
		this.score_insult = score_insult;
		this.score_public = score_public;
		this.score_spec = score_spec;
		this.result = result;
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


	public String getScore_public() {
		return score_public;
	}


	public void setScore_public(String score_public) {
		this.score_public = score_public;
	}


	public String getScore_spec() {
		return score_spec;
	}


	public void setScore_spec(String score_spec) {
		this.score_spec = score_spec;
	}


	public String getScore_insult() {
		return score_insult;

	}

	public void setScore_insult(String score_insult) {
		this.score_insult = score_insult;
	}


	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
	}
	
	
}
