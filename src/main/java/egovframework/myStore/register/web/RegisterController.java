package egovframework.myStore.register.web;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import egovframework.fleaMarket.cmmn.service.JsonUtil;
import egovframework.fleaMarket.login.service.UserVO;
import egovframework.myStore.register.service.ProductVO;
import egovframework.myStore.register.service.RegisterService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class RegisterController {

	@Resource(name = "registerService")
	private RegisterService registerService;
	
	@RequestMapping(value = "/myStoreRegister.do", method = RequestMethod.GET)
	public String myStoreRegister(ModelMap model) throws Exception {
		try {
			List<EgovMap> aCategoryList = registerService.getACategoryList();
			
			System.out.println("aCategoryList : " + aCategoryList);
			model.addAttribute("aCategoryList", aCategoryList);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			System.out.println("myStoreRegister 메소드 종료");
		}
		
		return "register/myStoreRegister.tiles2";
	}
	
	@RequestMapping(value = "/bCategoryList.do", method = RequestMethod.POST)
	public void bCategoryList(@RequestBody String reqParam, HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("reqParam : " + reqParam);
		
		Map<String, Object> reqParamMap = JsonUtil.JsonToMap(reqParam);
		
		System.out.println("reqParamMap : " + reqParamMap);
		
		String param = (String)reqParamMap.get("param");
		
		System.out.println("param : " + param);
		
		List<String> bCategoryList = registerService.getBCategoryList(param);
		
		System.out.println("bCategoryList : " + bCategoryList);
	
		String bCategoryJson = JsonUtil.ListToJson(bCategoryList);
				
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println(bCategoryJson);
	}
	
	@RequestMapping(value = "/registerProduct.do", method = RequestMethod.POST)
	public String registerProduct(Authentication auth, @ModelAttribute ProductVO productVO, BindingResult bindingResult, RedirectAttributes redirectAttributes) throws Exception {	
		try {
			if (bindingResult.hasErrors()) {
				List<ObjectError> errors = bindingResult.getAllErrors();
				for (ObjectError error:errors) {
					System.out.println("error : " + error.getDefaultMessage());
				}
				return "redirect:/myStoreRegister.do";
			}
			
			if (auth == null) { /* 로그인이 되어 있지 않을 경우 */
				System.out.println("로그인을 해주세요");
				return "redirect:/myStoreRegister.do";
			} else { /* 로그인이 되어 있을 경우 */
				UserVO userVO = (UserVO)auth.getPrincipal(); /* 로그인 유저 세션 받아옴 */
				productVO.setUserNo(Integer.parseInt(userVO.getUserNo())); /* 로그인 유저 번호 set */
			}
			
			int result = registerService.registerProduct(productVO);
			
			redirectAttributes.addAttribute("result", result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			System.out.println("registerProduct 메소드 종료");
		}
		
		return "redirect:/myStoreManage.do";
	}
}
