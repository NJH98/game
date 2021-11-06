package com.example.demo.auth;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration			// 빈(객체) 생성후 Spring Container에 등록하라
@EnableWebSecurity		// Spring Security 를 시작한다
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		http.authorizeRequests()
		.antMatchers("/css/**","/js/**", "/img/**").permitAll()
		.antMatchers("/security/**").permitAll()
		.antMatchers("/newuser").permitAll()
		.antMatchers("/usersave").permitAll()
		.anyRequest().authenticated();
			
		http.formLogin()												//아닌경우 loginForm을 보여준다
			.loginPage("/loginForm")
			.loginProcessingUrl("/j_spring_security_check")
			.usernameParameter("j_username")
			.passwordParameter("j_password")
			.permitAll();
		
		http.logout()
			.permitAll();
		http.csrf().disable();
	}
	
	
	@Autowired
	private DataSource dataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication()
		.dataSource(dataSource)
		.usersByUsernameQuery("select name as userName, password, enabled from user_list where name=?")
		.authoritiesByUsernameQuery("select name as userName, authority from user_list where name=?")
		.passwordEncoder(new BCryptPasswordEncoder());
	}
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
