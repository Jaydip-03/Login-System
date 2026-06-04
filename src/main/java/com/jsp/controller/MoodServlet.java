package com.jsp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/mood")
public class MoodServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String type = req.getParameter("type") ;
		String name = req.getParameter("name") ;
		
		 String[] roasts = {
		            "Even Google can't find your talent 😭",
		            "You're not stupid, just... limited edition 😶",
		            "You bring joy... when you leave 😌"
		        };
		 
		 String[] compliments = {
		            "You're doing amazing 🔥",
		            "You have great potential 💯",
		            "You're smarter than you think 🧠"
		        };

		 String message;

		        if ("roast".equals(type)) {
		            int i = (int)(Math.random() * roasts.length);
		            message = roasts[i];
		        } else {
		            int i = (int)(Math.random() * compliments.length);
		            message = compliments[i];
		        }
		        
		   req.setAttribute("name", name);
		   req.setAttribute("type", type);
		   req.setAttribute("message", message);
		   req.getRequestDispatcher("moodResult.jsp").forward(req, resp);
	}

}
