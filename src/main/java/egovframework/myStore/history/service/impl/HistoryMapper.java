package egovframework.myStore.history.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("historyMapper")
public interface HistoryMapper {

	ArrayList<HashMap<String, Object>> selectPurchaseList(String param) throws Exception;

	ArrayList<HashMap<String, Object>> selectSellList(String param) throws Exception;

	ArrayList<HashMap<String, Object>> selectPurchaseSearchList(Map<String, Object> param) throws Exception;

	ArrayList<HashMap<String, Object>> selectSellSearchList(Map<String, Object> param) throws Exception;

	ArrayList<HashMap<String, Object>> selectPurchaseStateList(Map<String, Object> reqMap) throws Exception;

	ArrayList<HashMap<String, Object>> selectSellStateList(Map<String, Object> reqMap) throws Exception;

}
