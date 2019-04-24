package egovframework.myStore.history.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public interface HistoryService {

	ArrayList<Object> selectHistoryList(String param) throws Exception;

	ArrayList<Object> selectHistorySearchList(Map<String,Object> param) throws Exception;

	ArrayList<Object> selectHistoryStateList(Map<String, Object> reqMap) throws Exception;

}
