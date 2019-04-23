package egovframework.admin.ask.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminAskController {

	@RequestMapping(value = "admin_faq.do")
	public String admin_faq() throws Exception {
		return "customer_service/faq.admin";
	}
	
	@RequestMapping(value = "admin_faq_detail.do")
	public String admin_faq_detail() throws Exception {
		return "customer_service/faq_detail.admin";
	}
	
	@RequestMapping(value = "admin_faq_insert.do")
	public String admin_faq_insert() throws Exception {
		return "customer_service/faq_insertform.jsp.admin";
	}
	
	@RequestMapping(value = "admin_ask.do")
	public String admin_ask() throws Exception {
		return "customer_service/ask.admin";
	}
	
	@RequestMapping(value = "admin_ask_detail.do")
	public String admin_ask_detail() throws Exception {
		return "customer_service/ask_detail.admin";
	}
}
