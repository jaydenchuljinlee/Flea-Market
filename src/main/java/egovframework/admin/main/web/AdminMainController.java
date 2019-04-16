package egovframework.admin.main.web;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.admin.main.service.AdminMainService;
import egovframework.fleaMarket.cmmn.service.JsonUtil;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class AdminMainController {
	private static final Logger logger = LoggerFactory.getLogger(AdminMainController.class);

	@Resource(name = "adminMainService")
	private AdminMainService adminMainService;
	
	@RequestMapping(value = "admin_main.do")
	public String initMain(ModelMap model) throws Exception {
		
		EgovMap cardMap = adminMainService.selectCardMap();
		ArrayList<EgovMap> chartList = adminMainService.selectChartList();
		
		try {
			
			model.addAttribute("cardMap", cardMap);
			model.addAttribute("chartList", chartList);
			
		} catch(Exception e) {
			logger.info(e.getMessage());
		}
		
		return "main/main.admin";
	}
}
