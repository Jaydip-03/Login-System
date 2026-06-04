<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', sans-serif;
        }

        body {
            height: 100vh;
            background: linear-gradient(135deg, #0f2027, #2c5364, #00c6ff);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .glass {
            width: 340px;
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

    <h2>Welcome Back 👋</h2>


    <form action="login" method="post">
        <input type="text" name="username" placeholder="Enter username" required>
        <input type="password" name="password" placeholder="Enter password" required>
        <button type="submit">Login</button>
    </form>

    <a href="register.jsp" class="link">Create new account</a>

</div>

</body>
</html> --%>





<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
        /* Exact same CSS as register.jsp for consistency */
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Outfit', sans-serif; }
        body { background-color: #0b0f19; color: #ffffff; height: 100vh; overflow: hidden; display: flex; justify-content: center; align-items: center; position: relative; }
        .orb { position: absolute; border-radius: 50%; filter: blur(90px); z-index: -1; animation: float 8s infinite alternate ease-in-out; }
        .orb-1 { width: 350px; height: 350px; background: #667eea; top: -10%; left: -10%; }
        .orb-2 { width: 350px; height: 350px; background: #764ba2; bottom: -10%; right: -10%; animation-delay: -4s; }
        @keyframes float { 0% { transform: translate(0, 0) scale(1); } 100% { transform: translate(40px, 40px) scale(1.1); } }
        .glass { background: rgba(255, 255, 255, 0.03); backdrop-filter: blur(20px); -webkit-backdrop-filter: blur(20px); border: 1px solid rgba(255, 255, 255, 0.05); border-top: 1px solid rgba(255, 255, 255, 0.1); padding: 45px 40px; border-radius: 24px; box-shadow: 0 25px 50px rgba(0, 0, 0, 0.5); width: 100%; max-width: 400px; text-align: center; z-index: 1; }
        h2 { font-size: 2rem; font-weight: 700; margin-bottom: 25px; letter-spacing: 1px; }
        input { width: 100%; background: rgba(0, 0, 0, 0.2); border: 1px solid rgba(255, 255, 255, 0.1); padding: 15px; border-radius: 12px; color: white; font-size: 1rem; margin-bottom: 15px; outline: none; transition: all 0.3s ease; }
        input::placeholder { color: rgba(255, 255, 255, 0.4); }
        input:focus { border-color: #667eea; box-shadow: 0 0 15px rgba(102, 126, 234, 0.3); background: rgba(0, 0, 0, 0.4); }
        button { width: 100%; padding: 15px; background: linear-gradient(135deg, #667eea, #764ba2); border: none; border-radius: 12px; color: white; font-weight: 700; font-size: 1.1rem; cursor: pointer; transition: all 0.3s ease; margin-top: 10px; box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4); }
        button:hover { transform: translateY(-3px); box-shadow: 0 8px 25px rgba(102, 126, 234, 0.6); }
        .link { display: block; margin-top: 25px; color: rgba(255, 255, 255, 0.6); text-decoration: none; font-size: 0.95rem; transition: 0.3s; }
        .link:hover { color: #ffffff; }
    </style>
</head>
<body>
    <div class="orb orb-1"></div>
    <div class="orb orb-2"></div>

    <div class="glass">
        <h2>Welcome Back 👋</h2>

        <form action="login" method="post">
            <input type="text" name="username" placeholder="Enter username" required autocomplete="off">
            <input type="password" name="password" placeholder="Enter password" required>
            <button type="submit">Login</button>
        </form>

        <a href="register.jsp" class="link">Don't have an account? <b>Create one</b></a>
    </div>
</body>
</html>