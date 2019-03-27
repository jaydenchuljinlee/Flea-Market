package egovframework.fleaMarket.login.service.impl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Service;

@Service("loginFailHandler")
public class LoginFailHandler implements AuthenticationFailureHandler {

	@Override
	public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse res, AuthenticationException e)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		if ( e instanceof UsernameNotFoundException ) {
			res.sendRedirect(req.getContextPath() + "/loginForm.do?error=1");
		} else if ( e instanceof BadCredentialsException ) {
			res.sendRedirect(req.getContextPath() + "/loginForm.do?error=2");
		} else if ( e instanceof RuntimeException ) {
			res.sendRedirect(req.getContextPath() + "/loginForm.do?error=3");
		}
	}

}
