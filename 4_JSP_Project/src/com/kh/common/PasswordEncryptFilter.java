package com.kh.common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class PasswordEncryptFilter
 */
@WebFilter(servletNames = {
		"loginServlet",
		"memberInsertServlet"
})
//;비밀번호가 들어가는 부분은?
// 로그인
// 회원정보 변경시
// 회원가입시 
public class PasswordEncryptFilter implements Filter {

    /**
     * Default constructor. 
     */
    public PasswordEncryptFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		PasswordEncryptWrapper pew = new PasswordEncryptWrapper((HttpServletRequest)request); //;다운캐스팅
		
		
		chain.doFilter(pew, response); //; 자동형변환으로 데이터 pew넘겨받음 (가공처리된 == 비밀번호 보안처리)
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
