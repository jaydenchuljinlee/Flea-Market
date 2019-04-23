package egovframework.myStore.manage.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("productManageMapper")
public interface ProductManageMapper {

	ArrayList<HashMap<String, Object>> selectProductList(String param) throws Exception;

}
