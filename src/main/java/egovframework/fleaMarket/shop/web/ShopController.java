package egovframework.fleaMarket.shop.web;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	@Resource(name = "shopService")
	private ShopService shopService;

	@RequestMapping(value = "/shop.do",method = RequestMethod.GET)
	public String home(HttpServletRequest request,
			ModelMap model/*, Authentication auth*/) throws Exception {
		//System.out.println("shop.do 호출");
//		UserVO userVo = (UserVO)auth.getPrincipal();
		
		/*HashMap<String, Object> resMap = new HashMap<String,Object>();
		
		resMap.put("user_no", auth.getName());
		
		List<EgovMap> userList = 
				shopService.selectUserList(resMap);	
		System.out.println(userList);
		
		String userName = (String) userList.get(0).get("userName");
		System.out.println("userList 정보 확인 :"+userList.get(0));
		model.addAttribute("userName",userName);*/
		
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
