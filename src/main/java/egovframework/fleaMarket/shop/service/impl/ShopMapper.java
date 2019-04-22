package egovframework.fleaMarket.shop.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("shopMapper")
public interface ShopMapper {

	List<EgovMap> selectUserList(HashMap<String, Object> param) throws Exception;

	HashMap<String, Object> selectShop(String param) throws Exception;

	ArrayList<HashMap<String, Object>> selectProductList(String param) throws Exception;

	ArrayList<HashMap<String, Object>> selectShopReviewsList(String param) throws Exception;

	String selectFollowing(String param) throws Exception;

	String selectFollower(String param) throws Exception;

}
