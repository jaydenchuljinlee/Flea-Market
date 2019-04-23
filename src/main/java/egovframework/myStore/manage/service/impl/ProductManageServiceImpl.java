package egovframework.myStore.manage.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.myStore.manage.service.ProductManageService;

@Service("productManageService")
public class ProductManageServiceImpl implements ProductManageService {

	@Resource(name = "productManageMapper")
	private ProductManageMapper productManageMapper;
	
	@Override
	public ArrayList<HashMap<String, Object>> selectProductList(String param) throws Exception {
		
		ArrayList<HashMap<String, Object>> list = productManageMapper.selectProductList(param);
		
		return list;
	}

}
