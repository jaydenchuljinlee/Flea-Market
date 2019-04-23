package egovframework.fleaMarket.product.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("productMapper")
public interface ProductMapper {

	HashMap<String, Object> selectOneItem(String param) throws Exception;

	ArrayList<HashMap<String, Object>> selectRelatedList(String param) throws Exception;

	HashMap<String, Object> selectShop(String param) throws Exception;

	
}
