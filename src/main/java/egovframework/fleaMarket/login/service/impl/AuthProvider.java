package egovframework.fleaMarket.login.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.StandardPasswordEncoder;
import org.springframework.stereotype.Service;

import egovframework.fleaMarket.login.service.UserVO;
@Service("authProvider")
public class AuthProvider implements AuthenticationProvider {

	@Resource(name="loginService")
	private UserDetailsService loginService;
	
	@Resource(name="encoder")
	private StandardPasswordEncoder encoder;
	
	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		// TODO Auto-generated method stub
		String userId = auth.getName();
		String userPw = auth.getCredentials().toString();
		
		try {
			
			UserVO userVO = (UserVO) loginService.loadUserByUsername(userId);
			
			ArrayList<SimpleGrantedAuthority> authList = (ArrayList<SimpleGrantedAuthority>) userVO.getAuthorities();
			
			if ( encoder.matches(userPw, userVO.getUserPw()) ) {
				authList.add(new SimpleGrantedAuthority("ROLE_USER"));
				return new UsernamePasswordAuthenticationToken(userVO, null, authList);
			} else {
				throw new BadCredentialsException("비밀번호 불일치");
			}
		} catch (UsernameNotFoundException e) {
			throw e;
		} catch (BadCredentialsException e) {
			throw e;
		} catch (RuntimeException e) {
			// TODO: handle exception
			throw e;
		}
	}

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return true;
	}

}

