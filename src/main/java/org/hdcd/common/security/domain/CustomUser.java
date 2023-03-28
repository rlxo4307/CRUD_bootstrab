package org.hdcd.common.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.hdcd.domain.Member;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

// 참고 . 인증 및 권한
// https://bloodfinger.tistory.com/29
// https://bit.ly/3JT5vMQ
public class CustomUser extends User {

	private static final long serialVersionUID = 1L;

	private Member member;

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	public CustomUser(Member member) {
		super(member.getUserId(), member.getUserPw(), member.getAuthList().stream()
				.map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));

		this.member = member;
	}

	public Member getMember() {
		return member;
	}
	
}
