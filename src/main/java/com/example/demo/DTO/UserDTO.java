package com.example.demo.DTO;


public class UserDTO {
	private String score;				// 필요한 항목이 있으면 해당방식으로 DTO에 추가
	private int enabled;
	
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
}

