package com.demo.spring;

public class MyResponse {
private String message;
private String userId;

public String getUserId() {
	return userId;
}

public void setUserId(String userId) {
	this.userId = userId;
}

public String getMessage() {
	return message;
}

public void setMessage(String message) {
	this.message = message;
}

}