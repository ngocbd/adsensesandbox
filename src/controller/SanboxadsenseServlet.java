package controller;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class SanboxadsenseServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		resp.getWriter().println("Hello, world");

		try {
			req.getRequestDispatcher("/index.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		
		String name = request.getParameter("name");
		
		URL url = new URL("http://pagead2.googlesyndication.com/pagead/ads?adtest=on&client=ca-digitalinspiration&random=1336472245&url="+name+"&gl=default&color_border=336699&color_bg=FFFFFF&ad_type=image&format=336x280_as");
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setDoOutput(true);
        connection.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.21) Gecko/20110830 AlexaToolbar/alxf-2.14 AlexaToolbar/pXVUnvuf-1.2 Firefox/3.6.21");
		connection.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
		connection.setRequestProperty("Accept-Language", "en-us,en;q=0.5");
		connection.setRequestProperty("Accept-Charset", "	ISO-8859-1,utf-8;q=0.7,*;q=0.7");
		connection.setRequestProperty("Connection", "keep-alive");
		connection.setRequestProperty("Keep-Alive", "115");
		connection.setRequestProperty("Cookie", "PREF=ID=987bb7a56b1cc7bc:U=691fa246d56f502e:FF=0:TM=1314876638:LM=1314876681:S=yBXzqp_WQq9ykX-j; NID=50=nfNXg7ymSSsfdzMnkEuo7t1GCgIEwcK5xmpFhu1mQWwvNI5nFHLZpRsy_1XnaoKrdj9hnz7za9-M2OIO99phfFSTmXln-xCvqzJaRWHsN0EQKgpmkvgUDTWPVF4I4c9L; SID=DQAAALcAAADhqr-J8Ls3CKhmbRjwTMMP1DjmIvR8qBFxv99saTaFFgoRsVf18W4p_BTocYoxYNMvsvh9sfjMj7KqLyd_s9Y0lwYY_Rrljd7t5IpKBTWWnsv9VSJ_qelH943zV8YIT3uuIdJbHhFlCnVEu_YealZoldWjf4VirYR0PIrr0i4_JU2JCHRmpyW0ACt3KcyLkukJlGDyT5yC5js3CBSTAhnWSylBpMWPWyWJzqXe2BQFcdfuU_qo00pAR-uEcMQ437M; HSID=A9Z-j3CKhzDEykAES");
		connection.setRequestProperty("Cache-Control", "max-age=0");

        if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) {
        	request.setAttribute("success", "Ok");
        	System.out.println("asad");
        }
		
		request.setAttribute("name", name);
		try {
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
