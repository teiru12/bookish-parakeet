package util;

import java.util.Map;
import java.util.HashMap;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.net.URLEncoder;
import java.net.URLDecoder;
import java.io.IOException;

/* ��Ű ������ ���� CookieBox Ŭ���� */
public class CookieBox {
	// ��Ű���� �����ϱ� ���� Cookie �� ����
	private Map<String, Cookie> cookieBox = new HashMap<String, Cookie>();
	
	// ��Ű�ڽ� ������ request�� �Ű������� �޴´�
	public CookieBox(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();			 
		if(cookies!=null) {
			for(int i=0;i<cookies.length;i++) {
				cookieBox.put(cookies[i].getName(),	cookies[i]);
			}
		}
	}
	
	// ��Ű���� �޼���1 �Ű����� : �̸�, ��
	public static Cookie createCookie(String name, String value) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"euc-kr"));
		return cookie;
	}
	// ��Ű���� �޼���2 �Ű����� : �̸�, ��, ���, ��ȿ�Ⱓ
	public static Cookie createCookie(String name, String value,
		String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"euc-kr"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
	// ��Ű���� �޼���3 �Ű����� : �̸�, ��, ������, ���, ��ȿ�Ⱓ
	public static Cookie createCookie(String name, String value, String domain,
		String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "euc-kr"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);		
		return cookie;
	}
	
	// �̸��� name�� ��Ű�� �������� get �޼���
	public Cookie getCookie(String name) {
		return cookieBox.get(name);
	}
	
	// �̸��� name�� ��Ű�� ��Ű���� �������� get �޼���
	public String getValue(String name) throws IOException {
		Cookie cookie = cookieBox.get(name);
		if(cookie == null) {
			return null;
		}
		return URLDecoder.decode(cookieBox.get(name).getValue(), "euc-kr");
	}
	// ��Ű�ʿ��� ��Ű�� ���� ������ �˻��ϴ� exist �޼���
	public boolean exists(String name) {
		return cookieBox.get(name) != null;
	}
}