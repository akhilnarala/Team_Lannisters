package com.entity;

public class LikeAnswer {
	
	private String answer_id;
	private String user_id;
	
	public LikeAnswer() {
		// TODO Auto-generated constructor stub
	}

	

	public String getUser_id() {
		return user_id;
	}



	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}



	public LikeAnswer(String answer_id, String user_id) {
		this.answer_id = answer_id;
		this.user_id = user_id;
	}



	public String getAnswer_id() {
		return answer_id;
	}

	public void setAnswer_id(String answer_id) {
		this.answer_id = answer_id;
	}
	
	

}
