package egovframework.fleaMarket.chatting.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ChattingController {

	@RequestMapping(value = "/chatting.do",method = RequestMethod.GET)
	public String chat() throws Exception {
		
		return "";
	}
}
