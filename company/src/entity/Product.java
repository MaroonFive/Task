package entity;

import java.io.Serializable;

public class Product implements Serializable {
	private int productId; // ��ʶ��

	private String serialNumber; // ��Ʒ���

	private String productName; // ��Ʒ���ƣ�����Ϊ��

	private String brand; // ��ƷƷ��

	private String model; // ��Ʒ�ͺ�

	private double price; // ��Ʒ�۸�

	private String picture; // ��ƷͼƬ

	private String desciption; // ��Ʒ����

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
