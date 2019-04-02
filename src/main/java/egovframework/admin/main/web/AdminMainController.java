package egovframework.admin.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainController {

	@RequestMapping(value = "admin_main.do")
	public String initMain() throws Exception {
		return "main/main.admin";
	}
}
