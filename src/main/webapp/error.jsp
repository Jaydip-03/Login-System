<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            height: 100vh;
            background: linear-gradient(135deg, #ff416c, #ff4b2b);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .glass {
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(15px);
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            color: white;
            width: 350px;
            box-shadow: 0 8px 32px rgba(0,0,0,0.3);
        }

        h2 {
            margin-bottom: 15px;
        }

        p {
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            background: white;
            color: #ff416c;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            background: #eee;
        }
    </style>
</head>

<body>

<div class="glass">
    <h2>Oops! 😢</h2>
    <%-- <p>${error}</p> --%>
    <%
    String msg = request.getParameter("msg");
    %>

   <p><%= msg %></p>

    <a href="login.jsp">Go Back</a>
</div>

</body>
</html>