package egovframework.fleaMarket.main.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
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
	public Map<String,Object> select() throws Exception {

		Map<String,Object> map = new HashMap<String,Object>();
		
		RecommendPdt recommendPdt	= new RecommendPdt();
		Category category			= new Category();
		
		recommendPdt.start();		
		category.start();
		
		map.put("category", category.list);
		map.put("recommendPdt", recommendPdt.list);
		
		List<ProductVO> pdtList = new ArrayList<ProductVO>();
		
		for (int i=0,loop=category.list.size(); i<loop; i++) {
			
			pdtList.add(mainMapper.selectCategoryPdt(category.list.get(i).get("ca_code")));
		}
		
		map.put("categoryPdt", pdtList);
		
		return map;
	}
	
	public class RecommendPdt extends Thread {
		
		List<ProductVO> list = new ArrayList<ProductVO>();
		
		public RecommendPdt() {
			
			setName("Category");
		}
		
		@Override
		public void run() {
			
			try {
				
				list = mainMapper.selectRecommenedList();
				logger.info(list.toString());
			} catch (Exception e) {
				logger.debug("RecommendPdt :" + e.getMessage());
			}
			
			super.run();
		}
	}
	
	public class Category extends Thread {
		
		List<HashMap<String,String>> list = new ArrayList<HashMap<String,String>>();
		
		public Category() {
			
			setName("Category");
		}
		
		@Override
		public void run() {
			
			try {
				
				list = mainMapper.selectCategoryList();
			} catch (Exception e) {
				logger.debug("Category :" + e.getMessage());
			}
			
			super.run();
		}
	}
	
	


}
