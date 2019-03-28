package egovframework.fleaMarket.payment.web;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.fleaMarket.payment.service.PaymentService;

@Controller
public class PaymentController {
	
	@Resource(name = "paymentService")
	private PaymentService paymentService;

	@RequestMapping(value = "payment.do",method = RequestMethod.GET)
	public String payment() throws Exception {
		
		return "payment/payment.tiles";
	}
	
	@RequestMapping(value = "complete_pay.do",method = RequestMethod.GET)
	public String complete_pay() throws Exception {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("p_no", "1");
		map.put("u_no", "1");
		map.put("pay_date", "2019-03-27");
		map.put("pay_state", "1");
		map.put("pay_quantity", "1");
		map.put("pay_price", "1000");
		
		paymentService.insert(map);
		
		return "payment/complete_payment.tiles";
	}
}
