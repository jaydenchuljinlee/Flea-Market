package egovframework.admin.product.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminProductController {

	@RequestMapping(value = "admin_product_manager.do")
	public String admin_product() throws Exception {
		return "product/product_manage.admin";
	}
	
	@RequestMapping(value = "admin_product_register.do")
	public String admin_product_register() throws Exception {
		return "product/product_register.admin";
	}
}
