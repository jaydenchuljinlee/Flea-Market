package egovframework.fleaMarket.product.web;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.fleaMarket.product.service.ProductService;

@Controller
public class ProductListController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductListController.class);
	
	@Resource(name = "prodcutService")
	private ProductService productService;

	@RequestMapping(value = "/product_home.do", method = RequestMethod.GET)
	public String product_home(@RequestParam(required=false) String param,ModelMap model) throws Exception {
		
		try {
			ArrayList<Object> list = productService.selectList(param);
			
			logger.info(list.get(0).toString());
			logger.info(list.get(1).toString());
		} catch(Exception e) {
			logger.info(e.getMessage());
		}
		
		return "product/home.tiles";
	}
}
