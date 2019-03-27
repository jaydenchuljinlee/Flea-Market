package egovframework.fleaMarket.login.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import egovframework.fleaMarket.login.service.LoginService;
import egovframework.fleaMarket.login.service.UserVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("loginService")
public class LoginServiceImpl implements LoginService, UserDetailsService {

	@Resource(name="loginMapper")
	private LoginMapper loginMapper;
	
	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		try {
			EgovMap userMap = loginMapper.selectUserOne(userId);
	
			UserVO userVO = new UserVO(userMap);
		
			return userVO;
		} catch (UsernameNotFoundException e) {
			throw e;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("로그인 서비스 오류");
		}
	}

	@Override
	public void saveLoginServiceUserInfo(String saveType, Map<String, Object> paramMap) throws Exception {
		// TODO Auto-generated method stub

		String email = "";
		email += paramMap.get("email").toString(); 
		email += "@";
		email += paramMap.get("domain").toString(); 
		
		String phone = "";
		phone += paramMap.get("phone1").toString(); 
		phone += "-";
		phone += paramMap.get("phone2").toString(); 
		phone += "-";
		phone += paramMap.get("phone3").toString(); 
		
		String address = "";
		address += paramMap.get("address").toString(); 
		address += " "; 
		address += paramMap.get("addressDetails").toString(); 
		
		paramMap.put("registEmail", email);
		paramMap.put("registPhone", phone);
		paramMap.put("registAddress", address);

		loginMapper.insertUserOne(paramMap);
		
	}

	@Override
	public boolean checkLoginServiceUserId(String registId) throws Exception {
		// TODO Auto-generated method stub
		EgovMap userMap = loginMapper.selectUserOne(registId);
		
		if ( userMap == null  || userMap.isEmpty()  ) {
			return true;
		} else {
			return false;
		}
	}



}

