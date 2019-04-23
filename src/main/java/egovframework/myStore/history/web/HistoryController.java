package egovframework.myStore.history.web;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
}
