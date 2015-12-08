package com.ssh.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.StrutsRequestWrapper;

public class UeditorFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req ;
		String url = request.getRequestURI() ;
		
		if( decideURI( url ) ) {
			chain.doFilter( new StrutsRequestWrapper( (HttpServletRequest)req ), res) ;
		} else {
			chain.doFilter( req, res ) ;
		}
	}
	
	private boolean decideURI( String url ) {
		if( url.endsWith( "imageUp.jsp" ) ) {
			return true ;
		} else if( url.endsWith( "fileUp.jsp" ) ) {
			return true ;
		}
		return false ;
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
