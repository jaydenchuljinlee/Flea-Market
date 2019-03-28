package egovframework.fleaMarket.payment.service.impl;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.fleaMarket.payment.service.PaymentService;

@Service("paymentService")
public class PaymentServiceImp implements PaymentService {

	@Resource(name = "paymentMapper")
	private PaymentMapper paymentMapper;
	
	@Override
	public void insert(HashMap<String, Object> map) throws Exception {
		
		paymentMapper.insert(map);
		
	}


}
