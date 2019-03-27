package egovframework.fleaMarket.login.service.impl;

import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("loginMapper")
public interface LoginMapper {

	void insertUserOne(Map<String, Object> paramMap) throws Exception;

	EgovMap selectUserOne(String userId) throws Exception;

}
