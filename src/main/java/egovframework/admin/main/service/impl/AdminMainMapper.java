package egovframework.admin.main.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("adminMainMapper")
public interface AdminMainMapper {

	EgovMap selectCardMap() throws Exception;

	ArrayList<HashMap<String,Object>> selectSellChartList() throws Exception;

	ArrayList<HashMap<String,Object>> selectJoinChartList() throws Exception;

	ArrayList<HashMap<String,Object>> selectWithdrawChartList() throws Exception;

}
