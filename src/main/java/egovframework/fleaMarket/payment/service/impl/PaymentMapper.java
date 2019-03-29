package egovframework.fleaMarket.payment.service.impl;

import java.util.HashMap;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("paymentMapper")
public interface PaymentMapper {

	void insert(Map<String, Object> map) throws Exception;
}
