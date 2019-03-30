package egovframework.fleaMarket.cmmn.service.util;

import java.text.SimpleDateFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils {
	private static final Logger logger = LoggerFactory.getLogger(FileUtils.class);
	
	public List<Map<String,Object>> parseInsertFileInfo(HttpServletRequest req) throws Exception {
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)req;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();

        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null;
        
        SimpleDateFormat now = new SimpleDateFormat("yyMMddHHmmss");
        String realpath = req.getSession().getServletContext().getRealPath("/");
        String relativePath = relativePath(realpath);
        
        String filePath = relativePath;
        
        File file = new File(filePath);
        logger.info(file.getPath());
        if(file.exists() == false){
            file.mkdirs();
        }
         
        while(iterator.hasNext()){
        	logger.info("ㅌㅁ");
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            
            if(multipartFile.isEmpty() == false){
                originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = now + originalFileExtension;
               
                file = new File(filePath + storedFileName);
                
                multipartFile.transferTo(file);
                 
                listMap = new HashMap<String,Object>();
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
                listMap.put("STORED_FILE_NAME", storedFileName);
                listMap.put("FILE_SIZE", multipartFile.getSize());
                list.add(listMap);
                
                System.out.println(listMap.get("ORIGINAL_FILE_NAME"));
            }
        }
        
        return list;
	}
	
	public String relativePath(String realPath) throws Exception{
		String[] path = realPath.split("\\\\");
		String projectPath = path[0] + "\\";
		
		for (int i=1,loop=path.length; i<loop; i++) {
			projectPath += path[i] + "\\";
			
			if (path[i].equals("workspace")) {
				break;
			}
		}
		projectPath += path[path.length-1] + "\\" + "src\\main\\webapp\\img\\upload\\";
		return projectPath;
	}
	
}
