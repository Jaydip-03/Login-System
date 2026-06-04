<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
    <p>${error}</p>
    <%
    String msg = request.getParameter("msg");
    %>

   <p><%= msg %></p>

    <a href="login.jsp">Go Back</a>
</div>

</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Outfit', sans-serif; }
        body { background-color: #0f0b0b; color: #ffffff; height: 100vh; overflow: hidden; display: flex; justify-content: center; align-items: center; position: relative; }
        
        /* Danger Orbs */
        .orb { position: absolute; border-radius: 50%; filter: blur(90px); z-index: -1; animation: float 6s infinite alternate ease-in-out; }
        .orb-1 { width: 350px; height: 350px; background: #ff416c; top: 10%; left: 10%; }
        .orb-2 { width: 350px; height: 350px; background: #ff4b2b; bottom: 10%; right: 10%; animation-delay: -3s; }
        @keyframes float { 0% { transform: translate(0, 0) scale(1); } 100% { transform: translate(30px, 30px) scale(1.1); } }
        
        .glass { background: rgba(255, 255, 255, 0.03); backdrop-filter: blur(20px); border: 1px solid rgba(255, 75, 43, 0.2); border-top: 1px solid rgba(255, 75, 43, 0.4); padding: 50px 40px; border-radius: 24px; box-shadow: 0 25px 50px rgba(0, 0, 0, 0.5); width: 100%; max-width: 400px; text-align: center; z-index: 1; }
        
        h2 { font-size: 2.5rem; font-weight: 700; margin-bottom: 15px; color: #ff4b2b; }
        
        p { font-size: 1.1rem; color: rgba(255, 255, 255, 0.8); margin-bottom: 30px; line-height: 1.5; }
        
        a {
            display: inline-block;
            padding: 12px 30px;
            background: rgba(255, 75, 43, 0.1);
            color: #ff4b2b;
            border: 1px solid #ff4b2b;
            border-radius: 12px;
            text-decoration: none;
            font-weight: 700;
            transition: all 0.3s ease;
        }
        a:hover { background: #ff4b2b; color: #ffffff; box-shadow: 0 5px 15px rgba(255, 75, 43, 0.4); transform: translateY(-2px); }
    </style>
</head>
<body>
    <div class="orb orb-1"></div>
    <div class="orb orb-2"></div>

    <div class="glass">
        <h2>Oops! 😢</h2>
        
        <% String msg = request.getParameter("msg"); %>
        <p><%= msg != null ? msg : "Something went wrong." %></p>
        
        <a href="login.jsp">Go Back to Login</a>
    </div>
</body>
</html>