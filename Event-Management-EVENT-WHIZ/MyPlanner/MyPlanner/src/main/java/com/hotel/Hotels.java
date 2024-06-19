package com.hotel;

public class Hotels {
	
private int hid1;
	
	private String hname;
	private String hemail;
	private String harea;
	private String hdescription;
	
	public Hotels(int hid1, String hname, String hemail, String harea, String hdescription) {
		super();
		this.hid1 = hid1;
		this.hname = hname;
		this.hemail = hemail;
		this.harea = harea;
		this.hdescription = hdescription;
	}

	public int getHid() {
		return hid1;
	}

	public void setHid(int hid1) {
		this.hid1 = hid1;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHemail() {
		return hemail;
	}

	public void setHemail(String hemail) {
		this.hemail = hemail;
	}

	public String getHarea() {
		return harea;
	}

	public void setHarea(String harea) {
		this.harea = harea;
	}

	public String getHdescription() {
		return hdescription;
	}

	public void setHdescription(String hdescription) {
		this.hdescription = hdescription;
	}

}
