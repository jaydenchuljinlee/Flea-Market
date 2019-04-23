package egovframework.admin.payment.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminPaymentController {

	@RequestMapping(value = "admin_pay.do")
	public String admin_pay() throws Exception {
		return "purchase_manage/pay.admin";
	}
	
	@RequestMapping(value = "admin_pay_detail.do")
	public String admin_pay_detail() throws Exception {
		return "purchase_manage/pay_detail.admin";
	}
	
	@RequestMapping(value = "admin_refund.do")
	public String admin_refund() throws Exception {
		return "purchase_manage/refund.admin";
	}
	
	@RequestMapping(value = "admin_refund_detail.do")
	public String admin_refund_detail() throws Exception {
		return "purchase_manage/refund_detail.admin";
	}
	
	@RequestMapping(value = "admin_exchange.do")
	public String admin_exchange() throws Exception {
		return "purchase_manage/exchange.admin";
	}
	
	@RequestMapping(value = "admin_delivery.do")
	public String admin_delivery() throws Exception {
		return "purchase_manage/delivery.admin";
	}
	
	@RequestMapping(value = "admin_delivery_detail.do")
	public String admin_delivery_detail() throws Exception {
		return "purchase_manage/delivery_detail.admin";
	}
}
