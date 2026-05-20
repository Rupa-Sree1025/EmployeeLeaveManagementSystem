<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<style>

body{
margin:0;
font-family:Arial,sans-serif;
background:#eef2f7;
}

.header{
background:#1e3c72;
color:white;
padding:20px;
text-align:center;
font-size:28px;
}

.navbar{
display:flex;
justify-content:center;
gap:30px;
margin-top:80px;
}

a{
text-decoration:none;
background:#1e3c72;
color:white;
padding:15px 30px;
border-radius:8px;
font-size:18px;
}

a:hover{
background:#28527a;
}

</style>

</head>

<body>

<div class="header">

<h1>
Welcome, <%= request.getAttribute("empName") %>
</h1>



</div>
<div class="navbar">

<a href="leaveForm.jsp">
Apply Leave
</a>

<a href="viewLeaves.jsp">
View Leaves
</a>

<a href="login.jsp">
Logout
</a>

</div>

</body>
</html>