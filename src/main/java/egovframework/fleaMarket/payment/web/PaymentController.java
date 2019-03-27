package egovframework.fleaMarket.payment.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.fleaMarket.payment.service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	PaymentService paymentService;

	@RequestMapping(value = "payment.do",method = RequestMethod.GET)
	public String payment() throws Exception {
		
		return "payment/payment.tiles";
	}
	
	@RequestMapping(value = "complete_pay.do",method = RequestMethod.GET)
	public String complete_pay() throws Exception {
		
		paymentService.insert();
		
		return "payment/complete_payment.tiles";
	}
}
