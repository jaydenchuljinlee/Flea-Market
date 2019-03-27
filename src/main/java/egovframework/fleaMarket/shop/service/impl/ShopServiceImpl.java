package egovframework.fleaMarket.shop.service.impl;

import java.util.HashMap;

import javax.annotation.Resource;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import egovframework.fleaMarket.shop.service.ShopService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("shopService")
public class ShopServiceImpl implements ShopService {

	@Resource(name = "shopMapper")
	private ShopMapper shopMapper;

	@Override
	public List<EgovMap> selectUserList(HashMap<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return shopMapper.selectUserList(param);
	}
	

}
