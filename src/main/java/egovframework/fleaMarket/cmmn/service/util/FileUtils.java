package egovframework.fleaMarket.cmmn.service.util;

import java.text.SimpleDateFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils implements ServletContextAware{
	private static final Logger logger = LoggerFactory.getLogger(FileUtils.class);
	private ServletContext context;

	
	public List<Map<String,Object>> parseInsertFileInfo(HttpServletRequest req) throws Exception {
		
		String filePath = context.getRealPath("/wepapp");
		logger.info(filePath);
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)req;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();

        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null;
        
        SimpleDateFormat now = new SimpleDateFormat("yyMMddHHmmss");
        
        File file = new File(filePath);
        logger.info(file.getPath());
        if(file.exists() == false){
            file.mkdirs();
        }
         
        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            if(multipartFile.isEmpty() == false){
                originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = now + originalFileExtension;
                
                file = new File(file + storedFileName);
                multipartFile.transferTo(file);
                 
                listMap = new HashMap<String,Object>();
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
                listMap.put("STORED_FILE_NAME", storedFileName);
                listMap.put("FILE_SIZE", multipartFile.getSize());
                list.add(listMap);
                
                System.out.println(listMap.get("ORIGINAL_FILE_NAME"));
            }
        }
        
        now = null;
        System.gc();
        
        return list;
	}

	@Override
	public void setServletContext(ServletContext context) {

		this.context = context;
		
	}

	public String getServletContext() {
		return context.getContextPath();
	}

	
}
