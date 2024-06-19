package com.pack;

public class Packages {
	
	private int pID;
	private String packName;
	private String price;
	private String description;
	private int hID;
	
	public Packages(int pID, String packName, String price, String description, int hID) {
		super();
		this.pID = pID;
		this.packName = packName;
		this.price = price;
		this.description = description;
		this.hID = hID;
	}

	public int getpID() {
		return pID;
	}

	public String getPackName() {
		return packName;
	}

	public String getPrice() {
		return price;
	}

	public String getDescription() {
		return description;
	}


	public int gethID() {
		return hID;
	}

	

}
