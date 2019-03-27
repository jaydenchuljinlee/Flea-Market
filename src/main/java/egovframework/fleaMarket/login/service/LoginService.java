package egovframework.fleaMarket.login.service;

import java.util.HashMap;
import java.util.Map;

public interface LoginService {

	void saveLoginServiceUserInfo(String saveType,Map<String, Object> paramMap) throws Exception;

	boolean checkLoginServiceUserId(String registId) throws Exception;

}
