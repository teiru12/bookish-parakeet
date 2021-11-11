package util;

import java.util.Map;
import java.util.HashMap;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.net.URLEncoder;
import java.net.URLDecoder;
import java.io.IOException;

/* 쿠키 생성을 위한 CookieBox 클래스 */
public class CookieBox {
	// 쿠키들을 저장하기 위한 Cookie 맵 변수
	private Map<String, Cookie> cookieBox = new HashMap<String, Cookie>();
	
	// 쿠키박스 생성자 request를 매개변수로 받는다
	public CookieBox(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();			 
		if(cookies!=null) {
			for(int i=0;i<cookies.length;i++) {
				cookieBox.put(cookies[i].getName(),	cookies[i]);
			}
		}
	}
	
	// 쿠키생성 메서드1 매개변수 : 이름, 값
	public static Cookie createCookie(String name, String value) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"euc-kr"));
		return cookie;
	}
	// 쿠키생성 메서드2 매개변수 : 이름, 값, 경로, 유효기간
	public static Cookie createCookie(String name, String value,
		String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"euc-kr"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
	// 쿠키생성 메서드3 매개변수 : 이름, 값, 도메인, 경로, 유효기간
	public static Cookie createCookie(String name, String value, String domain,
		String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "euc-kr"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);		
		return cookie;
	}
	
	// 이름이 name인 쿠키를 가져오는 get 메서드
	public Cookie getCookie(String name) {
		return cookieBox.get(name);
	}
	
	// 이름이 name인 쿠키의 쿠키값을 가져오는 get 메서드
	public String getValue(String name) throws IOException {
		Cookie cookie = cookieBox.get(name);
		if(cookie == null) {
			return null;
		}
		return URLDecoder.decode(cookieBox.get(name).getValue(), "euc-kr");
	}
	// 쿠키맵에서 쿠키의 존재 유무를 검사하는 exist 메서드
	public boolean exists(String name) {
		return cookieBox.get(name) != null;
	}
}