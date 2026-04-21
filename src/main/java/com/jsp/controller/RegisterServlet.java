package com.jsp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.jsp.dao.UserDao;
import com.jsp.model.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserDao dao = new UserDao();

        // 🔥 Check if user already exists
        if (dao.isUserExists(username)) {

            resp.sendRedirect("error.jsp?msg=User+already+exists");
            return;
        }

        // 🔥 Create user object
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        // 🔥 Save user
        dao.saveUser(user);

        // ✅ Redirect to login
        resp.sendRedirect("login.jsp?msg=Registered+Successfully");
    }
}