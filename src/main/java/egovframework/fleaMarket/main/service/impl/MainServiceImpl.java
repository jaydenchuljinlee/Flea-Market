package egovframework.fleaMarket.main.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import egovframework.fleaMarket.cmmn.service.util.FileUtils;
import egovframework.fleaMarket.main.service.MainService;

@Service("mainService")
public class MainServiceImpl implements MainService {

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	@Override
	public void test(HttpServletRequest req) throws Exception {
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(req);


	}

}
