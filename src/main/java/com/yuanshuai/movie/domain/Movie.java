package com.yuanshuai.movie.domain;

public class Movie {
//	电影编号、电影名称、剧情介绍、导演、发行日期。
	private int mid;
	private String mname;
	private String anys;
	private String actor;
	private String dates;
	private String tname;
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getAnys() {
		return anys;
	}
	public void setAnys(String anys) {
		this.anys = anys;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	

}
