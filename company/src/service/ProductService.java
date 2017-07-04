package service;

import java.util.ArrayList;
import java.util.List;

import dao.ProductDAO;
import entity.Product;

public class ProductService {

	/*
	 * ��ѯ���ж�������Ʒ
	 */
	public int getCount() {
		String sql = "select count(*) from PRODUCT";
		ProductDAO pd = new ProductDAO();
		pd.getCount(sql);
		return pd.getNum();
	}
	/*
	 * ��ѯ������Ʒ��Ϣ����ҳ��ʾ
	 */
	public List getPageList(int page) {
		String sql = "select * from PRODUCT";
		ProductDAO pd = new ProductDAO();
		return pd.getPageList(sql, page);
	}

	/*
	 * ͨ��id��ѯ��Ʒ��һ����Ϣ
	 */
	public Product getProduct(int productId) {
		String sql = "select * from PRODUCT where productId = "+productId;
		ProductDAO pd = new ProductDAO();
		return pd.getProduct(sql);
	}

	/*
	 * ��ѯ���е���Ʒ
	 */
	public List getAllProducts() {
		String sql = "select * from PRODUCT";
		ProductDAO pd = new ProductDAO();
		return pd.getProducts(sql);
	}

	/*
	 * ����Ա������Ʒ��Ϣ
	 */
	public int updateProduct(Product product) {
		String sql = "update PRODUCT set serialNumber=?,productName =?,brand =?,model =?, price =?,picture =? where productId =?";
		System.out.println("�޸� >>"+sql);
		ProductDAO pd = new ProductDAO();
		return pd.updateProduct(product, sql);
	}

	/*
	 * ����Աɾ��������Ʒ��¼���÷�������dao���Porduct����public int deleteAllProduct��String sql��{}����
	 */
	public int deleteAllProduct() {
		String sql = "delete from PRODUCT";
		ProductDAO pd = new ProductDAO();
		return pd.deleteAllProduct(sql);
	}

	/*
	 * ����Աͨ����Ʒ���id�ֶ�ɾ��һ����Ʒ��Ϣ������dao���Product���е�public int deleteProduct(String sql){}����
	 */
	public int deleteProduct(int productId) {
		String sql = "delete from PRODUCT where productId="+productId;
		ProductDAO pd = new ProductDAO();
		return pd.deleteProduct(sql);
	}

	/*
	 * ����Աͨ����Ʒ��product��id�ֶ������Ʒ��Ϣ���÷�������dao���ProductDao���е�public int saveProduct(Product product,String sql){}����
	 */
	public int saveProduct(Product product) {
		String sql = "insert into PRODUCT values(?,?,?,?,?,?,?)";
		ProductDAO pd = new ProductDAO();
		return pd.saveProduct(product, sql);
	}
	/*
	 * ���Է���
	 */
  public static void main(String[] args) {
	ProductService ps =new ProductService();
	Product p=new Product();
	p.setProductName("aa");
	ps.saveProduct(p);

	
}
}
