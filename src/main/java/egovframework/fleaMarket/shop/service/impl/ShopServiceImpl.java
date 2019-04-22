package egovframework.fleaMarket.shop.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import egovframework.fleaMarket.cmmn.service.JsonUtil;
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

	@Override
	public ArrayList<Object> selectHomeList(String param) throws Exception {
		
		HashMap<String, Object> shop = shopMapper.selectShop(param);
		ArrayList<HashMap<String,Object>> productList = shopMapper.selectProductList(param);
		
		ArrayList<Object> rtnList = new ArrayList<Object>();
		
		rtnList.add(shop);
		rtnList.add(productList);
		
		return rtnList;
	}

	@Override
	public HashMap<String, Object> selectShopTab(String param) throws Exception {
		
		Map<String, Object> map = JsonUtil.JsonToMap(param);
		HashMap<String,Object> rtnMap = new HashMap<String,Object>();
		switch(map.get("target").toString()) {
			
		case	"product_list":
			ArrayList<HashMap<String,Object>> prodcutList = shopMapper.selectProductList(map.get("user").toString());
			rtnMap.put("product", prodcutList);
			break;
		case	"shop_reviews":
			ArrayList<HashMap<String,Object>> reviewsList = shopMapper.selectShopReviewsList(map.get("user").toString());
			rtnMap.put("reviewsList", reviewsList);
			break;
		case	"following": 
			String following = shopMapper.selectFollowing(map.get("user").toString());
			rtnMap.put("following", following);
			break;
		case	"follower":
			String follower = shopMapper.selectFollower(map.get("user").toString());
			rtnMap.put("follower", follower);
			break;
	}
		return rtnMap;
	}
	

}
