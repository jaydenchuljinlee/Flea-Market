package egovframework.myStore.register.service.impl;

import java.util.List;

import egovframework.myStore.register.service.ProductVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("registerMapper")
public interface RegisterMapper {
	int insertProduct(ProductVO productVO);

	List<EgovMap> selectACategoryList();

	List<String> selectBCategoryList(String param);
}
