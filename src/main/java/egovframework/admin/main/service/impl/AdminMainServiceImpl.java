package egovframework.admin.main.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.admin.main.service.AdminMainService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("adminMainService")
public class AdminMainServiceImpl implements AdminMainService {
	private static final Logger logger = LoggerFactory.getLogger(AdminMainServiceImpl.class);
	
	
	@Resource
	private AdminMainMapper adminMainMapper;
	
	@Override
	public EgovMap selectCardMap() throws Exception {
		
		EgovMap cardMap = adminMainMapper.selectCardMap();
		
		return cardMap;
	}

	@Override
	public HashMap<String,Object> selectChartMap(String target) throws Exception {
		
		HashMap<String,Object> rtnMap = new HashMap<String, Object>();
		
		switch(target) {
			
			case "client"	:
				
				ArrayList<HashMap<String,Object>> joinChartList		= adminMainMapper.selectJoinChartList();
				ArrayList<HashMap<String,Object>> rtnList1			= new ArrayList<HashMap<String,Object>>();
				weekList(joinChartList,rtnList1);
				
				ArrayList<HashMap<String,Object>> withdrawChartList	= adminMainMapper.selectWithdrawChartList();
				ArrayList<HashMap<String,Object>> rtnList2			= new ArrayList<HashMap<String,Object>>();
				weekList(withdrawChartList,rtnList2);
				
				rtnMap.put("joinChartList", rtnList1);
				rtnMap.put("withdrawChartList", rtnList2);
				break;
			
			case "sell"		:
				
				ArrayList<HashMap<String,Object>> chartList = adminMainMapper.selectSellChartList();
				ArrayList<HashMap<String,Object>> realList		= new ArrayList<HashMap<String,Object>>();
				weekList(chartList,realList);
				
				rtnMap.put("sellChartList", realList);
				break;
		}
		
		return rtnMap;
	}

	public void weekList(ArrayList<HashMap<String,Object>> list,ArrayList<HashMap<String,Object>> rtnList) {
		
		Set set = list.get(0).keySet();
		
		Iterator it = set.iterator();
		
		HashMap<String,Object> key = new HashMap<String,Object>();
		
		while (it.hasNext()) {
			String item = it.next().toString();
			
			if (item.contains("date")) {
				key.put("date", item);
			} else {
				key.put("quantity", item);
			}
			
		}
		
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		Calendar cal = new GregorianCalendar(Locale.KOREA);
		cal.setTime(today);
		String date = format.format(today);
		for (int i=1,cnt=0; i<8; i++) {
			if (cnt < list.size() && list.get(cnt).get(key.get("date").toString()).toString().equals(date)) {
				
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put(key.get("date").toString(), list.get(cnt).get(key.get("date").toString()).toString());
				map.put(key.get("quantity").toString(), list.get(cnt).get(key.get("quantity").toString()).toString());
				
				rtnList.add(map);
				cnt++;
			} else {
				
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put(key.get("date").toString(), date);
				map.put(key.get("quantity").toString(), "0");
				
				rtnList.add(map);
			}
			
			cal.add(Calendar.DATE, -1);
			date = format.format(cal.getTime());
			
		}
	}
}
