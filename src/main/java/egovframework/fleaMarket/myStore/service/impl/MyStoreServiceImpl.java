package egovframework.fleaMarket.myStore.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.fleaMarket.myStore.service.MyStoreService;
import egovframework.fleaMarket.myStore.service.ProductVO;

@Service("myStoreService")
public class MyStoreServiceImpl implements MyStoreService {

	@Resource(name = "myStoreMapper")
	private MyStoreMapper myStoreMapper;
	
	@Override
	public int register(ProductVO productVO) {
		int result = myStoreMapper.register(productVO);
		return result;
	}
}
