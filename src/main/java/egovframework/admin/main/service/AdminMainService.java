package egovframework.admin.main.service;

import java.util.ArrayList;
import java.util.HashMap;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface AdminMainService {

	EgovMap selectCardMap() throws Exception;

	HashMap<String,Object> selectChartMap(String target) throws Exception;

}
