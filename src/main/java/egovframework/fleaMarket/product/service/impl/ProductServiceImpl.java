package egovframework.fleaMarket.product.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.fleaMarket.product.service.ProductService;

@Service("prodcutService")
public class ProductServiceImpl implements ProductService {

	@Resource(name = "productMapper")
	private ProductMapper productMapper;
	
	
	@Override
	public ArrayList<Object> selectList(String param) throws Exception {
		
		HashMap<String, Object> item	= productMapper.selectOneItem(param);
		ArrayList<HashMap<String, Object>> relatedList	= productMapper.selectRelatedList(param);
		
		ArrayList<Object> rtnList = new ArrayList<Object>();
		rtnList.add(item);
		rtnList.add(relatedList);
		
		return rtnList;
	}

}
