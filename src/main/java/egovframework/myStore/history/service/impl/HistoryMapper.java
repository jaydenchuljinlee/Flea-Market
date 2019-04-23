package egovframework.myStore.history.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("historyMapper")
public interface HistoryMapper {

	ArrayList<HashMap<String, Object>> selectPurchaseList(String param) throws Exception;

	ArrayList<HashMap<String, Object>> selectSellList(String param) throws Exception;

}
