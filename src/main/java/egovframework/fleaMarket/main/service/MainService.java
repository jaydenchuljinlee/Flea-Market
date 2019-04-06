package egovframework.fleaMarket.main.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import egovframework.myStore.register.service.ProductVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface MainService {

	void test(HttpServletRequest req)throws Exception;

	Map<String,Object> select() throws Exception;

	

}
