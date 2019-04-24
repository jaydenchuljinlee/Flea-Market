package egovframework.myStore.history.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.myStore.history.service.HistoryService;

@Service("historyService")
public class HistoryServiceImpl implements HistoryService {

	@Resource(name = "historyMapper")
	private HistoryMapper historyMapper;

	@Override
	public ArrayList<Object> selectHistoryList(String param) throws Exception {
		
		ArrayList<HashMap<String,Object>> purchaseList = historyMapper.selectPurchaseList(param);
		
		ArrayList<HashMap<String,Object>> sellList = historyMapper.selectSellList(param);
		
		ArrayList<Object> rtnList = new ArrayList<Object>();
		
		rtnList.add(purchaseList);
		rtnList.add(sellList);
		
		return rtnList;
	}

	@Override
	public ArrayList<Object> selectHistorySearchList(Map<String,Object> param) throws Exception {
		
		ArrayList<Object> rtnList = new ArrayList<Object>();
		
		switch (param.get("type").toString()) {
		
			case "buy"	:
				ArrayList<HashMap<String,Object>> purchaseList = historyMapper.selectPurchaseSearchList(param);
				rtnList.add(purchaseList);
				break;
			case "sell"	:
				ArrayList<HashMap<String,Object>> sellList = historyMapper.selectSellSearchList(param);
				rtnList.add(sellList);
				break;
		}
		
		return rtnList;
	}

	@Override
	public ArrayList<Object> selectHistoryStateList(Map<String, Object> reqMap) throws Exception {
		
		ArrayList<Object> rtnList = new ArrayList<Object>();
		
		switch (reqMap.get("type").toString()) {
		
			case "buy"	:
				ArrayList<HashMap<String,Object>> purchaseList = historyMapper.selectPurchaseStateList(reqMap);
				rtnList.add(purchaseList);
				break;
			case "sell"	:
				ArrayList<HashMap<String,Object>> sellList = historyMapper.selectSellStateList(reqMap);
				rtnList.add(sellList);
				break;
		}
		
		return rtnList;
	}
}
