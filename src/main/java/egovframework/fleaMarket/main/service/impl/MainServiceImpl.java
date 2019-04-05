package egovframework.fleaMarket.main.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.googlecode.ehcache.annotations.Cacheable;
import com.googlecode.ehcache.annotations.KeyGenerator;

import egovframework.fleaMarket.cmmn.service.util.FileUtils;
import egovframework.fleaMarket.main.service.MainService;
import egovframework.myStore.register.service.ProductVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("mainService")
public class MainServiceImpl implements MainService {
	private static Logger logger = LoggerFactory.getLogger(MainServiceImpl.class); 
	
	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	@Resource(name = "mainMapper")
	private MainMapper mainMapper;
	
	@Override
	public void test(HttpServletRequest req) throws Exception {
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(req);
	}

	@Override
	@Cacheable(cacheName="CacheExample")
	public List<EgovMap> select() throws Exception {
		logger.debug("캐시테스트");
		return mainMapper.selectList();
	}


}
