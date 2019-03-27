package egovframework.fleaMarket.login.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.crypto.password.StandardPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.fleaMarket.cmmn.service.JsonUtil;
import egovframework.fleaMarket.login.service.LoginService;

@Controller
public class LoginController {

	@Resource(name="loginService")
	private LoginService loginService;
	
	@Resource(name="encoder")
	private StandardPasswordEncoder encoder;
	
	@RequestMapping(value="registForm.do")
	public String registForm () throws Exception {
		System.out.println(encoder.encode("1234"));
		return "login/registForm.tiles";
	} 

	@RequestMapping(value="loginForm.do")
	public String loginForm () throws Exception {
		return "login/loginForm.tiles";
	} 
	
	@RequestMapping(value="regist.do")
	public String regist (
			@RequestParam HashMap<String, Object> paramMap
			) throws Exception {
			paramMap.put("registPw", encoder.encode(paramMap.get("registPw").toString()));
			
			loginService.saveLoginServiceUserInfo("INSERT" ,paramMap);
			
		return "redirect:loginForm.do";
	} 
	
	@RequestMapping(value="registIdChk.do", produces="application/json; charset=UTF-8;")
	@ResponseBody
	public String registIdChk (
			@RequestParam String registId) throws Exception {
		
		System.out.println(registId);
		
		boolean useYn = loginService.checkLoginServiceUserId(registId);

		Map<String, Object> resMap = new HashMap<String, Object>();

		resMap.put("useYn", useYn);
		
		return JsonUtil.MapToJson(resMap);
	} 
}
