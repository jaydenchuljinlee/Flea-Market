package egovframework.fleaMarket.payment.service.impl;

import java.util.HashMap;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("paymentMapper")
public interface PaymentMapper {

	void insert(HashMap<String, Object> map) throws Exception;
}
