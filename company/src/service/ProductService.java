package service;

import java.util.ArrayList;
import java.util.List;

import dao.ProductDAO;
import entity.Product;

public class ProductService {

	/*
	 * 查询共有多少条商品
	 */
	public int getCount() {
		String sql = "select count(*) from PRODUCT";
		ProductDAO pd = new ProductDAO();
		pd.getCount(sql);
		return pd.getNum();
	}
	/*
	 * 查询所有商品信息并分页显示
	 */
	public List getPageList(int page) {
		String sql = "select * from PRODUCT";
		ProductDAO pd = new ProductDAO();
		return pd.getPageList(sql, page);
	}

	/*
	 * 通过id查询商品的一条信息
	 */
	public Product getProduct(int productId) {
		String sql = "select * from PRODUCT where productId = "+productId;
		ProductDAO pd = new ProductDAO();
		return pd.getProduct(sql);
	}

	/*
	 * 查询所有的商品
	 */
	public List getAllProducts() {
		String sql = "select * from PRODUCT";
		ProductDAO pd = new ProductDAO();
		return pd.getProducts(sql);
	}

	/*
	 * 管理员更新商品信息
	 */
	public int updateProduct(Product product) {
		String sql = "update PRODUCT set serialNumber=?,productName =?,brand =?,model =?, price =?,picture =? where productId =?";
		System.out.println("修改 >>"+sql);
		ProductDAO pd = new ProductDAO();
		return pd.updateProduct(product, sql);
	}

	/*
	 * 管理员删除所有商品记录，该方法调用dao层的Porduct类中public int deleteAllProduct（String sql）{}方法
	 */
	public int deleteAllProduct() {
		String sql = "delete from PRODUCT";
		ProductDAO pd = new ProductDAO();
		return pd.deleteAllProduct(sql);
	}

	/*
	 * 管理员通过商品表的id字段删除一条商品信息，调用dao层的Product类中的public int deleteProduct(String sql){}方法
	 */
	public int deleteProduct(int productId) {
		String sql = "delete from PRODUCT where productId="+productId;
		ProductDAO pd = new ProductDAO();
		return pd.deleteProduct(sql);
	}

	/*
	 * 管理员通过商品表product的id字段添加商品信息。该方法调用dao层的ProductDao类中的public int saveProduct(Product product,String sql){}方法
	 */
	public int saveProduct(Product product) {
		String sql = "insert into PRODUCT values(?,?,?,?,?,?,?)";
		ProductDAO pd = new ProductDAO();
		return pd.saveProduct(product, sql);
	}
	/*
	 * 调试方法
	 */
  public static void main(String[] args) {
	ProductService ps =new ProductService();
	Product p=new Product();
	p.setProductName("aa");
	ps.saveProduct(p);

	
}
}
