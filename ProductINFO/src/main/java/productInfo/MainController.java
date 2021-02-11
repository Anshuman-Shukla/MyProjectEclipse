package productInfo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productDao.ProductDao;
import productModel.Product;

@Controller
public class MainController {
	
@Autowired
private ProductDao productDao;
	
	
	@RequestMapping("/")
	public String Home(Model m) {
		m.addAttribute("title", "HOME PAGE");
		List<Product> products = productDao.getAllProduct();
		m.addAttribute("product", products);

		System.out.println("home is running...");
		return "home";
	}

	@RequestMapping("/add")
	public String AddProduct(Model m) {
		m.addAttribute("title", "ADD PRODUCT HERE");
System.out.println("please Add Product..");
		return "addproduct";
	}

	@RequestMapping(value = "/handleProduct", method = RequestMethod.POST)
	public RedirectView handleproduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		productDao.CreateProduct(product);

		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() +"/");
		return view;
	}
	
	// deleting Product info
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteproduct( @PathVariable("productId") int id, HttpServletRequest req) {
		this.productDao.deleteproductInfo(id);
		System.out.println("Deleting method is working..");
		RedirectView view = new RedirectView();
		view.setUrl(req.getContextPath() +"/");
		return view;
	}
	//update controller
	@RequestMapping("/update/{productId}")
	public String updateproduct( @PathVariable("productId") int id, Model m) {
		Product product = this.productDao.getsingleData(id);
		System.out.println("Updating product is working..");
		m.addAttribute("product",product);
		
		return "updated_product";
	}

}
