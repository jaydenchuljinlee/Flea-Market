package egovframework.myStore.register.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.myStore.register.service.ProductVO;
import egovframework.myStore.register.service.RegisterService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("registerService")
public class RegisterServiceImpl implements RegisterService {

	@Resource(name = "registerMapper")
	private RegisterMapper registerMapper;
	
	@Override
	public int registerProduct(ProductVO productVO) {
		return registerMapper.insertProduct(productVO);
	}
	
	@Override
	public List<EgovMap> getACategoryList() {
		return registerMapper.selectACategoryList();
	}

	@Override
	public List<String> getBCategoryList(String param) {
		return registerMapper.selectBCategoryList(param);
	}
}
