package com.ssh.util;
import java.security.MessageDigest;


public class MD5Util {

	 public static String md5Encode(String inStr) throws Exception {
	        MessageDigest md5 = null;
	        try {
	        	 //拿到一个MD5转换器（如果想要SHA1参数换成“SHA1”）
	            md5 = MessageDigest.getInstance("MD5");
	        } catch (Exception e) {
	            System.out.println(e.toString());
	            e.printStackTrace();
	            return "";
	        }
	        //输入的字符串转换成字节数组
	        byte[] byteArray = inStr.getBytes("UTF-8");
	        //转换并返回结果，也是字节数组，包含16个元素
	        byte[] md5Bytes = md5.digest(byteArray);
	        StringBuffer hexValue = new StringBuffer();
	        for (int i = 0; i < md5Bytes.length; i++) {
	            int val = ((int) md5Bytes[i]) & 0xff;
	            if (val < 16) {
	                hexValue.append("0");
	            }
	            hexValue.append(Integer.toHexString(val));
	        }
	        //字符数组转换成字符串返回
	        return hexValue.toString();
	    }
}
