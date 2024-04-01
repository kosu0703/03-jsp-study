package com.ict.db;

public class VO {
	private String idx, name, age, addr ;
	
	public VO() {}
	
	public VO(String idx, String name, String age, String addr) {
		this.idx = idx;
		this.name = name;
		this.age = age;
		this.addr = addr;
	}
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
}
