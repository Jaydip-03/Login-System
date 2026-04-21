<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    Object user = session.getAttribute("user");

    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            height: 100vh;
            background: linear-gradient(135deg, #1d2671, #c33764);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .glass {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            border-radius: 15px;
            padding: 40px;
            color: white;
            text-align: center;
            box-shadow: 0 8px 32px rgba(0,0,0,0.3);
            border: 1px solid rgba(255,255,255,0.2);
        }

        button {
            margin-top: 15px;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            background: #ff4b2b;
            color: white;
            cursor: pointer;
        }

    </style>
</head>

<body>

<div class="glass">
    <!-- <h2>Welcome, ${username} ✨</h2> -->
    
    <%
    com.jsp.model.User u = (com.jsp.model.User) session.getAttribute("user");
    %>

<h2>Welcome, <%= u.getUsername() %> 👋</h2>

    <form action="logout">
    <button>Logout</button>
</form>
</div>

</body>
</html>