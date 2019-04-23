package egovframework.myStore.register.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface RegisterService {

	int registerProduct(ProductVO productVO);
	List<EgovMap> getACategoryList();
	List<String> getBCategoryList(String param);
}
