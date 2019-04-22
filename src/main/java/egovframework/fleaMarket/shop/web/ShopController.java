package egovframework.fleaMarket.shop.web;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.fleaMarket.login.service.UserVO;
import egovframework.fleaMarket.shop.service.ShopService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class ShopController {
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@Resource(name = "shopService")
	private ShopService shopService;

	@RequestMapping(value = "/shop.do",method = RequestMethod.GET)
	public String home(@RequestParam(required=false) String param,ModelMap model) throws Exception {
		
		ArrayList<Object> list = shopService.selectHomeList(param);
		
		logger.info(list.get(0).toString());
		logger.info(list.get(1).toString());
		
		return "shop/home.tiles";
	}
	
	@RequestMapping(value = "/review.do",method = RequestMethod.GET)
	public String review() throws Exception {
		
		return "shop/review.tiles";
	}
	@RequestMapping(value = "/follower.do",method = RequestMethod.GET)
	public String follower() throws Exception {
		
		return "shop/follower.tiles";
	}
	
}
