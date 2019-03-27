package egovframework.fleaMarket.shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("shopMapper")
public interface ShopMapper {

	List<EgovMap> selectUserList(HashMap<String, Object> param) throws Exception;

}
