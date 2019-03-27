package egovframework.fleaMarket.login.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.antlr.grammar.v3.ANTLRParser.throwsSpec_return;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class UserVO implements UserDetails {

	private String userNo;
	private String userId;
	private String userPw;
	private String userName;
	private String userGender;
	private Collection<? extends GrantedAuthority> authorities;

	public UserVO(Map<String, Object> userMap) throws UsernameNotFoundException {

		try {
			this.userNo = userMap.get("userNo").toString();
			this.userId = userMap.get("userId").toString();
			this.userPw = userMap.get("userPw").toString();
			this.userName = userMap.get("userName").toString();
			this.userGender = userMap.get("userGender").toString();
			this.authorities = new ArrayList<SimpleGrantedAuthority>();
		} catch (Exception e) {
			// TODO: handle exception
			throw new UsernameNotFoundException("vo 생성 오류");
		}

	}

	public String getUserNo() {
		return userNo;
	}

	public String getUserId() {
		return userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public String getUserName() {
		return userName;
	}

	public String getUserGender() {
		return userGender;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return this.authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return getUserPw();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return getUserNo();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}

