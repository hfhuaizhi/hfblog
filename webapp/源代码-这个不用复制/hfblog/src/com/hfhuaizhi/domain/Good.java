package com.hfhuaizhi.domain;

public class Good {
	public int id;
	public String name;
	public double price;
	public String img;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "Good [id=" + id + ", name=" + name + ", price=" + price
				+ ", img=" + img + "]";
	}
	

}
