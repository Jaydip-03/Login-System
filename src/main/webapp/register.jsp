<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', sans-serif;
        }

        body {
            height: 100vh;
            background: linear-gradient(135deg, #141e30, #243b55, #00c6ff);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .glass {
            width: 350px;
            padding: 35px;
            border-radius: 16px;
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(18px);
            border: 1px solid rgba(255,255,255,0.2);
            box-shadow: 0 8px 32px rgba(0,0,0,0.3);
            color: white;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }

        .msg {
            color: #90ee90;
            margin-bottom: 10px;
        }

        .error {
            color: #ff6b6b;
            margin-bottom: 10px;
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            background: rgba(255,255,255,0.2);
            color: white;
            outline: none;
        }

        input::placeholder {
            color: #ddd;
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            border: none;
            border-radius: 8px;
            background: linear-gradient(45deg, #00c6ff, #0072ff);
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            transform: scale(1.05);
        }

        .link {
            margin-top: 15px;
            display: block;
            color: #ddd;
            text-decoration: none;
        }

        .link:hover {
            color: white;
        }
    </style>
</head>

<body>

<div class="glass">

    <h2>Create Account ✨</h2>

    <!-- success message -->
    <div class="msg">
        <%
            String msg = request.getParameter("msg");
            if (msg != null) {
        %>
            <%= msg %>
        <%
            }
        %>
    </div>

    <!-- error message -->
    <div class="error">
        <%
            String error = request.getParameter("error");
            if (error != null) {
        %>
            <%= error %>
        <%
            }
        %>
    </div>

    <form action="register" method="post">
        <input type="text" name="username" placeholder="Enter username" required>
        <input type="password" name="password" placeholder="Enter password" required>
        <button type="submit">Register</button>
    </form>

    <a href="login.jsp" class="link">Already have an account? Login</a>

</div>

</body>
</html>