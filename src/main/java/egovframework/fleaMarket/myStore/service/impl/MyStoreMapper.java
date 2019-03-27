package egovframework.fleaMarket.myStore.service.impl;

import egovframework.fleaMarket.myStore.service.ProductVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("myStoreMapper")
public interface MyStoreMapper {

	int register(ProductVO productVO);
}
