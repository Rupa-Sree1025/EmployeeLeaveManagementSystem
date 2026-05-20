<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Leave Management System</title>

<style>

body{
    margin:0;
    font-family:Arial,sans-serif;
    background:#eef2f7;
}

.container{
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.card{
    background:white;
    width:400px;
    padding:40px;
    border-radius:12px;
    box-shadow:0px 6px 20px rgba(0,0,0,0.15);
}

h1{
    text-align:center;
    color:#1e3c72;
    margin-bottom:10px;
}

.subtitle{
    text-align:center;
    color:gray;
    margin-bottom:30px;
}

label{
    font-weight:bold;
    color:#333;
}

input{
    width:100%;
    padding:12px;
    margin-top:8px;
    margin-bottom:20px;
    border:1px solid #ccc;
    border-radius:8px;
    font-size:14px;
}

button{
    width:100%;
    padding:12px;
    background:#1e3c72;
    color:white;
    border:none;
    border-radius:8px;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#28527a;
}

.footer{
    text-align:center;
    margin-top:20px;
    color:gray;
    font-size:13px;
}

</style>

</head>

<body>

<div class="container">

<div class="card">

<h1>Employee Leave Management</h1>

<p class="subtitle">
Corporate Employee Portal
</p>

<form action="login" method="post">

<label>Email</label>

<input type="email"
name="email"
placeholder="Enter your email"
required>

<label>Password</label>

<input type="password"
name="password"
placeholder="Enter password"
required>

<button type="submit">
Login
</button>

</form>

<div class="footer">
© 2026 Employee Leave Management System
</div>

</div>

</div>
<div class="footer">
© 2026 Employee Leave Management System | Corporate Portal
</div>

</body>
</html>