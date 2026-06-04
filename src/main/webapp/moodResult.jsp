<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Target Acquired</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;700&display=swap" rel="stylesheet">
    
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Space Grotesk', sans-serif;
        }

        body {
            margin: 0;
            height: 100vh;
            background-color: #07090f;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            overflow: hidden;
            position: relative;
        }

        /* Animated Glowing Background Orbs */
        .orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(80px);
            z-index: -1;
            animation: float 10s infinite alternate ease-in-out;
        }

        .orb-1 { width: 300px; height: 300px; background: #ff007f; top: 10%; left: 20%; }
        .orb-2 { width: 400px; height: 400px; background: #00f0ff; bottom: 10%; right: 15%; animation-delay: -5s; }

        @keyframes float {
            0% { transform: translate(0, 0) scale(1); }
            100% { transform: translate(50px, 50px) scale(1.2); }
        }

        .glass {
            background: rgba(15, 15, 20, 0.6);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            border-left: 1px solid rgba(255, 255, 255, 0.2);
            padding: 50px 40px;
            border-radius: 24px;
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.6);
            width: 450px;
            text-align: center;
            position: relative;
            z-index: 1;
        }

        .header-text {
            font-size: 1.2rem;
            color: rgba(255, 255, 255, 0.6);
            margin-bottom: 10px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .target-name {
            font-size: 2rem;
            font-weight: 700;
            color: #fff;
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
            margin: 0 0 20px 0;
        }

        .result-message {
            font-size: 1.4rem;
            line-height: 1.5;
            margin-bottom: 40px;
            color: #00f0ff; /* Neon cyan text */
            text-shadow: 0 0 8px rgba(0, 240, 255, 0.4);
        }

        .roast-mode {
            color: #ff007f; /* Changes to neon pink if it's a roast */
            text-shadow: 0 0 8px rgba(255, 0, 127, 0.4);
        }

        .btn-reload {
            display: inline-block;
            text-decoration: none;
            padding: 12px 30px;
            color: #ff007f;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            border: 2px solid #ff007f;
            border-radius: 12px;
            transition: 0.3s;
            box-shadow: 0 0 10px rgba(255, 0, 127, 0.2);
        }

        .btn-reload:hover {
            background: #ff007f;
            color: #07090f;
            box-shadow: 0 0 30px #ff007f;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
   
    <div class="orb orb-1"></div>
    <div class="orb orb-2"></div>

    <div class="glass">
        <%
            String name = (String) request.getAttribute("name");
            String message = (String) request.getAttribute("message");
            String type = (String) request.getAttribute("type");
            
            String emoji = "😄";
            String modeClass = ""; 
            
            // If it's a roast, we apply the pink neon class and a devil emoji
            if ("roast".equals(type)) {
                emoji = "😈";
                modeClass = "roast-mode";
            }
        %>
        
        <div class="header-text">Target:</div>
        <h2 class="target-name"><%= name %> <%= emoji %></h2>
        
        <div class="result-message <%= modeClass %>">
            "<%= message %>"
        </div>
        
        <a href="home.jsp" class="btn-reload">Reset Tool</a>
    </div>
   
</body>
</html>