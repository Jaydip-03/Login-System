<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
 
 <br>
 <a href="mood.jsp">go to mood page</a>

    <form action="logout">
    <button>Logout</button>
</form>
</div>

</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    Object user = session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Outfit', sans-serif; }
        body { background-color: #0b0f19; color: #ffffff; height: 100vh; overflow: hidden; display: flex; justify-content: center; align-items: center; position: relative; }
        .orb { position: absolute; border-radius: 50%; filter: blur(90px); z-index: -1; animation: float 8s infinite alternate ease-in-out; }
        .orb-1 { width: 400px; height: 400px; background: #00f2fe; top: 10%; left: -5%; }
        .orb-2 { width: 350px; height: 350px; background: #4facfe; bottom: 5%; right: -5%; animation-delay: -3s; }
        @keyframes float { 0% { transform: translate(0, 0) scale(1); } 100% { transform: translate(30px, -30px) scale(1.1); } }
        
        .glass { background: rgba(255, 255, 255, 0.03); backdrop-filter: blur(20px); border: 1px solid rgba(255, 255, 255, 0.05); padding: 50px 40px; border-radius: 24px; box-shadow: 0 25px 50px rgba(0, 0, 0, 0.5); width: 100%; max-width: 450px; text-align: center; z-index: 1; }
        
        h2 { font-size: 2.2rem; font-weight: 700; margin-bottom: 30px; }
        
        /* Secondary Action Button */
        .btn-outline {
            display: inline-block;
            width: 100%;
            padding: 15px;
            margin-bottom: 15px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 12px;
            background: rgba(255, 255, 255, 0.05);
            color: white;
            text-decoration: none;
            font-weight: 500;
            font-size: 1.1rem;
            transition: all 0.3s ease;
        }
        .btn-outline:hover { background: rgba(255, 255, 255, 0.1); border-color: #00f2fe; box-shadow: 0 0 15px rgba(0, 242, 254, 0.2); transform: translateY(-2px); }

        /* Logout Button */
        button {
            width: 100%;
            padding: 15px;
            background: linear-gradient(135deg, #ff416c, #ff4b2b);
            border: none;
            border-radius: 12px;
            color: white;
            font-weight: 700;
            font-size: 1.1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(255, 65, 108, 0.4);
        }
        button:hover { transform: translateY(-3px); box-shadow: 0 8px 25px rgba(255, 65, 108, 0.6); }
    </style>
</head>
<body>
    <div class="orb orb-1"></div>
    <div class="orb orb-2"></div>

    <div class="glass">
        <% com.jsp.model.User u = (com.jsp.model.User) session.getAttribute("user"); %>
        <h2>Welcome, <%= u.getUsername() %> 👋</h2>
        
        <a href="mood.jsp" class="btn-outline">Go to Mood Page</a>
        
        <form action="logout">
            <button type="submit">Logout</button>
        </form>
    </div>
</body>
</html>