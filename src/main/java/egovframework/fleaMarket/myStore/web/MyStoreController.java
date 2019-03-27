package egovframework.fleaMarket.myStore.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import egovframework.fleaMarket.login.service.UserVO;
import egovframework.fleaMarket.myStore.service.MyStoreService;
import egovframework.fleaMarket.myStore.service.ProductVO;

@Controller
public class MyStoreController {

	@Resource(name = "myStoreService")
	private MyStoreService myStoreService;
	
	@RequestMapping(value = "/myStore_list.do", method = RequestMethod.GET)
	public String myStore_list() throws Exception {
		
		return "myStore/list.tiles2";
	}
	
	@RequestMapping(value = "/myStore_register.do", method = RequestMethod.GET)
	public String myStore_register() throws Exception {
		return "myStore/register.tiles2";
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String register(Authentication auth, @ModelAttribute ProductVO productVO, BindingResult bindingResult, RedirectAttributes redirectAttributes) throws Exception {
		try {
			if (bindingResult.hasErrors()) {
				List<ObjectError> errors = bindingResult.getAllErrors();
				for (ObjectError error:errors) {
					System.out.println("error : " + error.getDefaultMessage());
				}
				return "redirect:/myStore_register.do";
			}
			UserVO userVO = (UserVO)auth.getPrincipal(); /* 로그인 유저 세션 받아옴 */
			
			productVO.setUserNo(Integer.parseInt(userVO.getUserNo())); /* 로그인 유저 번호 set */
			
			int result = myStoreService.register(productVO);
			
			redirectAttributes.addAttribute("result", result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			System.out.println("register 메소드 종료");
		}
		
		return "redirect:/myStore_list.do";
	}
}
