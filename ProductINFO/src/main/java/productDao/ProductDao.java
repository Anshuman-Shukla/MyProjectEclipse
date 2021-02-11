package productDao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productModel.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernatetemplate;

//Creating or Saving Product
	@Transactional
	public void CreateProduct(Product product) {

		System.out.println("***Creating Product Information***");
		this.hibernatetemplate.saveOrUpdate(product);

	}

//getting All Data
	public List<Product> getAllProduct() {
		List<Product> products = this.hibernatetemplate.loadAll(Product.class);
		return products;
	}

	// delete Single Data
	@Transactional
	public void deleteproductInfo(int pid) {
		Product p = this.hibernatetemplate.load(Product.class, pid);
		this.hibernatetemplate.delete(p);
	}

	// Get Single Data
	public Product getsingleData(int pid) {
		Product product = this.hibernatetemplate.get(Product.class, pid);
		return product;
	}

}
