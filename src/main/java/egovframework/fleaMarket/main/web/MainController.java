package egovframework.fleaMarket.main.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.fleaMarket.main.service.MainService;
import egovframework.myStore.register.service.ProductVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class MainController {
	private static Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Resource(name = "mainService")
	MainService mainService;
	
	@RequestMapping(value = "main.do")
	public String main() throws Exception {
		
		try {
			Map<String,Object> selectMap = mainService.select();
			logger.info(selectMap.toString());
		} catch(Exception e) {
			logger.info(e.getMessage());
		}
		
		/**/
		
		return "main/main.tiles";
	}

	@RequestMapping(value = "leftMain.do")
	public String leftMain() throws Exception {
		System.out.println("asd");
		return "main/leftMain.left-tiles";
	}
	
	@RequestMapping(value = "sale_list.do", method = RequestMethod.GET)
	public String sale_product_list() throws Exception {
		
		return "sale/list.tiles";
	}
	
	@RequestMapping(value = "sale_register.do", method = RequestMethod.GET)
	public String sale_register() throws Exception {
		
		return "sale/register.tiles";
	}
	
	@RequestMapping(value = "carousel.do", method = RequestMethod.GET)
	public String carousel() throws Exception {
		
		
		
		return "main/carousel.tiles";
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login() throws Exception {
		
		return "user/login.tiles";
	}
	
	@RequestMapping(value = "signup.do", method = RequestMethod.GET)
	public String signup() throws Exception {
		
		return "user/signup.tiles";
	}
	
	@RequestMapping(value = "category_list.do", method = RequestMethod.GET)
	public String category_list() throws Exception {
		
		return "category/list.tiles";
	}
	
	@RequestMapping(value = "/product_home.do", method = RequestMethod.GET)
	public String product_home() throws Exception {
		
		return "product/home.tiles";
	}
	
	@RequestMapping(value = "/test.do", method = RequestMethod.POST)
	public void test(HttpServletRequest req) throws Exception {
		System.out.println("d");
		mainService.test(req);
	}
	
}
