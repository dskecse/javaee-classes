package org.news.security;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component("userDetailsService")
public class CustomUserDetailsService implements UserDetailsService {

	@Override
	public UserDetails loadUserByUsername(String login)
			throws UsernameNotFoundException {

		if (login == null || login.isEmpty()) {
			throw new UsernameNotFoundException("User not found");
		}

		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountIsEnable = true;
		boolean accountNotLocked = true;
		String[] roles = { "ADMIN" };
		return new User(login, "", accountIsEnable, accountNonExpired,
				credentialsNonExpired, accountNotLocked, getAuthorities(roles));
	}

	public Collection<? extends GrantedAuthority> getAuthorities(String[] roles) {

		Collection<GrantedAuthority> resultRoles = new ArrayList<GrantedAuthority>();
		for (String role : roles) {
			resultRoles.add(new SimpleGrantedAuthority(role));
		}

		return resultRoles;
	}
}
