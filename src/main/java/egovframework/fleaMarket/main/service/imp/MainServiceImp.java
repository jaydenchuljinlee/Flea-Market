package egovframework.fleaMarket.main.service.imp;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import egovframework.fleaMarket.cmmn.service.util.FileUtils;
import egovframework.fleaMarket.main.service.MainService;

@Service("mainService")
public class MainServiceImp implements MainService {

	@Resource(name = "fileUtils")
	FileUtils fileUtils;
	
	@Override
	public void test(HttpServletRequest req) throws Exception {
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(req);
	}

}
