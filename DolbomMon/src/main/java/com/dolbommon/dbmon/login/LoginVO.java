package com.dolbommon.dbmon.login;

public class LoginVO {
	
	private String userid;
	private String userpwd;
	private String username;
	private String birth;
	private String tel1;
	private String email;
	private String loginCookie;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLoginCookie() {
		return loginCookie;
	}
	public void setLoginCookie(String loginCookie) {
		this.loginCookie = loginCookie;
	}
}
