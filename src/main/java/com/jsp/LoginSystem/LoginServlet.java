package com.jsp.LoginSystem;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dao.UserDao;
import com.jsp.model.User;

@WebServlet(value="/login")
public class LoginServlet extends HttpServlet  {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uName = req.getParameter("username");
        String uPass = req.getParameter("password");
        
        UserDao dao = new UserDao();
        User user = dao.validateUser(uName, uPass);
		
		if (user != null) {
			
//			req.setAttribute("username", uName);
//			
//			RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
//			rd.forward(req, resp);
			
			HttpSession session = req.getSession();
		    session.setAttribute("user", user);

		    resp.sendRedirect("home.jsp");
			
		}
		else {
//			req.setAttribute("error", "\"Invalid credentials\"");
//			RequestDispatcher rd = req.getRequestDispatcher("error.jsp");
//			rd.forward(req, resp);
			
			resp.sendRedirect("error.jsp?msg=Invalid+credentials");
			
		}
	}

}
