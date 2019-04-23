package egovframework.myStore.history.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

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
}
