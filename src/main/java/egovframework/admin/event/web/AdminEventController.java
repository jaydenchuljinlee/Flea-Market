package egovframework.admin.event.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminEventController {

	@RequestMapping(value = "admin_event.do")
	public String admin_event() throws Exception {
		return "event/event.admin";
	}
	
	@RequestMapping(value = "admin_event_insertForm.do")
	public String admin_event_insertForm() throws Exception {
		return "event/event_insertform.admin";
	}
	
	@RequestMapping(value = "admin_event_detail.do")
	public String admin_event_detail() throws Exception {
		return "event/event_detail.admin";
	}
}
