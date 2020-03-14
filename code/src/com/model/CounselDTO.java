package com.model;

public class CounselDTO {
		private int counsel_cd;
		private String counsel_id;
		private String counsel_manager;
		private String counsel_title;
		private String counsel_content;
		private String counsel_dt;
		
		
		public CounselDTO(int counsel_cd, String counsel_id, String counsel_manager, String counsel_title,
				String counsel_content, String counsel_dt) {
			super();
			this.counsel_cd = counsel_cd;
			this.counsel_id = counsel_id;
			this.counsel_manager = counsel_manager;
			this.counsel_title = counsel_title;
			this.counsel_content = counsel_content;
			this.counsel_dt = counsel_dt;
		}


		public CounselDTO(String counsel_id, String counsel_manager, String counsel_title, String counsel_content) {
			this.counsel_id = counsel_id;
			this.counsel_manager = counsel_manager;
			this.counsel_title = counsel_title;
			this.counsel_content = counsel_content;
		}


		public int getCounsel_cd() {
			return counsel_cd;
		}


		public void setCounsel_cd(int counsel_cd) {
			this.counsel_cd = counsel_cd;
		}


		public String getCounsel_id() {
			return counsel_id;
		}


		public void setCounsel_id(String counsel_id) {
			this.counsel_id = counsel_id;
		}


		public String getCounsel_manager() {
			return counsel_manager;
		}


		public void setCounsel_manager(String counsel_manager) {
			this.counsel_manager = counsel_manager;
		}


		public String getCounsel_title() {
			return counsel_title;
		}


		public void setCounsel_title(String counsel_title) {
			this.counsel_title = counsel_title;
		}


		public String getCounsel_content() {
			return counsel_content;
		}


		public void setCounsel_content(String counsel_content) {
			this.counsel_content = counsel_content;
		}


		public String getCounsel_dt() {
			return counsel_dt;
		}


		public void setCounsel_dt(String counsel_dt) {
			this.counsel_dt = counsel_dt;
		}
		
}
