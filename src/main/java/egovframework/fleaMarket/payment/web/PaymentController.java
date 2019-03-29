package egovframework.fleaMarket.payment.web;

import java.util.HashMap;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.fleaMarket.payment.service.PaymentService;

@Controller
public class PaymentController {
	private static Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@Resource(name = "paymentService")
	private PaymentService paymentService;

	@RequestMapping(value = "payment.do",method = RequestMethod.GET)
	public String payment() throws Exception {
		
		return "payment/payment.tiles";
	}
	
	@RequestMapping(value = "complete_pay.do",method = RequestMethod.GET)
	public String complete_pay() throws Exception {
		
		try {
			HashMap<String, Object> map = new HashMap<String, Object>();
			
			map.put("p_no", "1");
			map.put("u_no", "1");
			map.put("pay_date", "2019-03-27");
			map.put("pay_state", "1");
			map.put("pay_quantity", "1");
			map.put("pay_price", "1000");
			
			paymentService.insert(map);
		} catch(Exception e) {
			logger.info(e.getMessage());
		}
		
		return "payment/complete_payment.tiles";
	}
}
