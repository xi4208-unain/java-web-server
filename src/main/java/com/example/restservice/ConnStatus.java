package com.example.restservice;

public class ConnStatus {
	// its my java project

	private final boolean status;
	private final String content;

	public ConnStatus(boolean ok, String content) {
		this.status = ok;
		this.content = content;
	}

	public boolean getStatus() {
		return status;
	}

	public String getContent() {
		return content;
	}
}