<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Roast / Compliment Generator</title>

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

        
        .orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(80px);
            z-index: -1;
            animation: float 10s infinite alternate ease-in-out;
        }

        .orb-1 {
            width: 300px;
            height: 300px;
            background: #ff007f; /* Neon Pink */
            top: 10%;
            left: 20%;
        }

        .orb-2 {
            width: 400px;
            height: 400px;
            background: #00f0ff; /* Neon Cyan */
            bottom: 10%;
            right: 15%;
            animation-delay: -5s;
        }

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
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.6), inset 0 0 20px rgba(255, 255, 255, 0.02);
            width: 380px;
            text-align: center;
            position: relative;
            z-index: 1;
        }

        h2 {
            margin-top: 0;
            font-size: 1.8rem;
            text-transform: uppercase;
            letter-spacing: 2px;
            background: linear-gradient(to right, #00f0ff, #ff007f);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 30px;
        }

        
        .input-group {
            position: relative;
            margin-bottom: 25px;
        }

        input, select {
            width: 100%;
            padding: 15px 10px;
            background: transparent;
            border: none;
            border-bottom: 2px solid rgba(255, 255, 255, 0.2);
            color: white;
            font-size: 1.1rem;
            outline: none;
            transition: 0.3s;
        }

        input::placeholder {
            color: rgba(255, 255, 255, 0.4);
        }

       
        input:focus, select:focus {
            border-bottom: 2px solid #00f0ff;
            box-shadow: 0 10px 10px -10px #00f0ff;
        }

        select option {
            background: #07090f;
            color: white;
        }

        
        button {
            width: 100%;
            padding: 15px;
            margin-top: 10px;
            background: transparent;
            color: #00f0ff;
            font-size: 1.2rem;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            border: 2px solid #00f0ff;
            border-radius: 12px;
            cursor: pointer;
            position: relative;
            overflow: hidden;
            transition: 0.4s;
            box-shadow: 0 0 10px rgba(0, 240, 255, 0.2);
        }

        button:hover {
            background: #00f0ff;
            color: #07090f;
            box-shadow: 0 0 30px #00f0ff;
            transform: scale(1.02);
        }
    </style>
</head>
<body>

    <div class="orb orb-1"></div>
    <div class="orb orb-2"></div>

    <div class="glass">
        <h2>Vibe Check 😎</h2>

        <form action="mood" method="post">
            <div class="input-group">
                <input type="text" name="name" placeholder="Target's Name..." required autocomplete="off">
            </div>

            <div class="input-group">
                <select name="type">
                    <option value="roast">ROAST THEM 😈</option>
                    <option value="compliment">COMPLIMENT THEM 😄</option>
                </select>
            </div>

            <button type="submit">Execute</button>
        </form>
    </div>
        
</body>
</html>