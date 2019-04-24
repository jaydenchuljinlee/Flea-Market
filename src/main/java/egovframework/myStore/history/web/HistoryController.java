package egovframework.myStore.history.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.fleaMarket.cmmn.service.JsonUtil;
import egovframework.myStore.history.service.HistoryService;
import egovframework.myStore.history.service.impl.HistoryMapper;

@Controller
public class HistoryController {

	@Resource(name = "historyService")
	private HistoryService historyService;
	
	@RequestMapping(value = "/history.do",method = RequestMethod.GET)
	public String history(@RequestParam(required=false) String param) throws Exception {
		
		ArrayList<Object> list = historyService.selectHistoryList(param);
		
		return "history/history.tiles2";
	}
	
	@RequestMapping(value = "/history_search.do",method = RequestMethod.POST)
	@ResponseBody
	public String history_search(@RequestBody String param) throws Exception {
		
		Map<String,Object> reqMap = JsonUtil.JsonToMap(param);
		
		ArrayList<Object> list = historyService.selectHistorySearchList(reqMap);
		
		return JsonUtil.ListToJson(list);
	}
	
	@RequestMapping(value = "/history_State.do",method = RequestMethod.POST)
	@ResponseBody
	public String history_State(@RequestBody String param) throws Exception {
		
		Map<String,Object> reqMap = JsonUtil.JsonToMap(param);
		
		ArrayList<Object> list = historyService.selectHistoryStateList(reqMap);
		
		return JsonUtil.ListToJson(list);
	}
}
