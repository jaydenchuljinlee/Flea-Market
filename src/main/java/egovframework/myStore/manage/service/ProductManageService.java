package egovframework.myStore.manage.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ProductManageService {

	ArrayList<HashMap<String, Object>> selectProductList(String param) throws Exception;

}
