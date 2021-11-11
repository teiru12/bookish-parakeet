package kame.chap02;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NowServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=euc-kr");
		Date now = new Date();
		
		PrintWriter writer = resp.getWriter();
		writer.println("<html>");
		writer.println("<head><title>���� �ð�</title></head>");
		writer.println("<body>");
		writer.println("���� �ð�:");
		writer.println(now.toString());
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		
	}	
}