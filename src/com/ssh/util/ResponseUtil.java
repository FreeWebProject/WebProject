package com.ssh.util;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class ResponseUtil {

	/**
	 * 获取response对象
	 * */
	public static HttpServletResponse obtianResponse() {
		HttpServletResponse response = ServletActionContext.getResponse() ;
		
		return response ;
	}
	
	/**
	 * ajax 向页面发送信息
	 * */
	public static void sendMsgToPage( String message ) {
		HttpServletResponse response = ResponseUtil.obtianResponse() ;
		
		response.setCharacterEncoding("UTF-8") ;
		try {
			response.getWriter().write( message ) ;
		} catch (IOException e) {
			System.out.println( "response.getWrite()出错" ) ;
			e.printStackTrace() ;
		}
	}
	
}
