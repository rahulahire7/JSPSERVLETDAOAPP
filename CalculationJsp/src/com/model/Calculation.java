package com.model;

public class Calculation {
	private int no1;
	private int no2;
	private int sum;
	
	//set get
	
	public int getNo1() {
		return no1;
	}
	public void setNo1(int no1) {
		this.no1 = no1;
	}
	public int getNo2() {
		return no2;
	}
	public void setNo2(int no2) {
		this.no2 = no2;
	}
	public int getSum() {
		return getNo1()+getNo2();
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	

}
