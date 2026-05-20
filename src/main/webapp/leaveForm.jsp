<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apply Leave</title>

<style>

body{
    margin:0;
    font-family:Arial,sans-serif;
    background:#eef2f7;
}

.container{
    width:50%;
    margin:40px auto;
}

.card{
    background:white;
    padding:35px;
    border-radius:12px;
    box-shadow:0px 6px 18px rgba(0,0,0,0.15);
}

h1{
    text-align:center;
    color:#1e3c72;
    margin-bottom:25px;
}

label{
    font-weight:bold;
    color:#333;
}

input, textarea{
    width:100%;
    padding:12px;
    margin-top:8px;
    margin-bottom:20px;
    border:1px solid #ccc;
    border-radius:8px;
    font-size:14px;
}

textarea{
    resize:none;
    height:90px;
}

button{
    width:100%;
    padding:14px;
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
    margin-top:30px;
    padding:15px;
    color:#666;
    font-size:14px;
}

</style>

</head>

<body>

<div class="container">

<div class="card">

<h1>Apply Leave</h1>

<form action="applyLeave" method="post">

<label>Employee Name</label>
<input type="text" name="name" required>

<label>Leave Type</label>
<input type="text" name="leaveType" required>

<label>From Date</label>
<input type="date" name="fromDate" required>

<label>To Date</label>
<input type="date" name="toDate" required>

<label>Reason</label>
<textarea name="reason" required></textarea>

<button type="submit">
Submit Leave Request
</button>

</form>

</div>

</div>
<div class="footer">
© 2026 Employee Leave Management System | Corporate Portal
</div>

</body>
</html>