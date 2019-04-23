package egovframework.myStore.manage.web;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.myStore.manage.service.ProductManageService;

@Controller
public class ProductManageController {
	
	@Resource(name = "productManageService")
	private ProductManageService productManageService;
	
	@RequestMapping(value = "/myStoreManage.do", method = RequestMethod.GET)
	public String myStoreManage(@RequestParam(required=false) String param) throws Exception {
		
		ArrayList<HashMap<String,Object>> list = productManageService.selectProductList(param);
		
		return "manage/myStoreManage.tiles2";
	}
}
