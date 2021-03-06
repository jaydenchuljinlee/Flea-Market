package egovframework.fleaMarket.shop.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ShopService {
	
	List<EgovMap> selectUserList(HashMap<String, Object> param) throws Exception;

	ArrayList<Object> selectHomeList(String param) throws Exception;

	HashMap<String, Object> selectShopTab(String param) throws Exception;

}
