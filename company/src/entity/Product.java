package entity;

import java.io.Serializable;

public class Product implements Serializable {
	private int productId; // 标识列

	private String serialNumber; // 产品编号

	private String productName; // 产品名称，不能为空

	private String brand; // 产品品牌

	private String model; // 产品型号

	private double price; // 产品价格

	private String picture; // 产品图片

	private String desciption; // 产品介绍

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getDesciption() {
		return desciption;
	}

	public void setDesciption(String desciption) {
		this.desciption = desciption;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

}
