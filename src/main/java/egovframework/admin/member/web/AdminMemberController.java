package egovframework.admin.member.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminMemberController {

	@RequestMapping(value = "admin_member.do")
	public String admin_member() throws Exception {
		return "member/member.admin";
	}
	
	@RequestMapping(value = "admin_sales.do")
	public String admin_sales() throws Exception {
		return "member/sales.admin";
	}
}
