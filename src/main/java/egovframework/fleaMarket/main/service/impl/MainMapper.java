package egovframework.fleaMarket.main.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import egovframework.myStore.register.service.ProductVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("mainMapper")
public interface MainMapper {

	List<HashMap<String,Object>> selectCategoryList() throws Exception;

	List<ProductVO> selectRecommenedList() throws Exception;

	List<ProductVO> selectCategoryPdt(String code) throws Exception;

	
}
