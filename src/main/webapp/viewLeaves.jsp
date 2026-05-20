<%@ page import="java.sql.*" %>
<%@ page import="com.leave.db.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>

body{
    margin:0;
    font-family:Arial,sans-serif;
    background:#eef2f7;
}

.header{
    background:#1e3c72;
    color:white;
    padding:18px;
    text-align:center;
    font-size:26px;
    font-weight:bold;
}

.container{
    width:90%;
    margin:40px auto;
}

.card{
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0px 6px 18px rgba(0,0,0,0.15);
}

h2{
    color:#1e3c72;
    text-align:center;
    margin-bottom:25px;
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#1e3c72;
    color:white;
    padding:14px;
}

td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

tr:hover{
    background:#f5f7fa;
}

.approve{
    background:#28a745;
    color:white;
    padding:8px 14px;
    text-decoration:none;
    border-radius:6px;
}

.reject{
    background:#dc3545;
    color:white;
    padding:8px 14px;
    text-decoration:none;
    border-radius:6px;
}

.approve:hover{
    background:#218838;
}

.reject:hover{
    background:#c82333;
}
.navbar{
    margin-top:15px;
}

.navbar a{
    color:white;
    text-decoration:none;
    margin:0 15px;
    font-size:16px;
}

.navbar a:hover{
    text-decoration:underline;
}
.cards{
    display:flex;
    gap:20px;
    margin-bottom:30px;
}

.box{
    flex:1;
    padding:20px;
    border-radius:10px;
    color:white;
    text-align:center;
}


.green{
    background:#28a745;
}

.red{
    background:#dc3545;
}

.orange{
    background:#ff9800;
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

<div class="header">

Employee Leave Management System

<div class="navbar">

<a href="leaveForm.jsp">Apply Leave</a>

<a href="viewLeaves.jsp">Dashboard</a>

<a href="login.jsp">Logout</a>

</div>

</div>
<div class="container">

<div class="card">
<div class="cards">


<div class="box green">
<h3>Approved</h3>
<p>Approved Requests</p>
</div>

<div class="box red">
<h3>Rejected</h3>
<p>Rejected Requests</p>
</div>

<div class="box orange">
<h3>Pending</h3>
<p>Pending Requests</p>
</div>

</div>

<h2>Leave Requests Dashboard</h2>

<table>

<tr>
<th>ID</th>
<th>Name</th>
<th>Leave Type</th>
<th>From Date</th>
<th>To Date</th>
<th>Reason</th>
<th>Status</th>
<th>Action</th>
</tr>

<%

try{

Connection con=DBConnection.getConnection();

PreparedStatement ps=
con.prepareStatement("select * from leaves");

ResultSet rs=ps.executeQuery();

while(rs.next()){

%>

<tr>

<td><%=rs.getInt("id")%></td>

<td><%=rs.getString("employee_name")%></td>

<td><%=rs.getString("leave_type")%></td>

<td><%=rs.getString("from_date")%></td>

<td><%=rs.getString("to_date")%></td>

<td><%=rs.getString("reason")%></td>

<td><%=rs.getString("status")%></td>

<td>

<a class="approve"
href="approveLeave?id=<%=rs.getInt("id")%>">
Approve
</a>

<a class="reject"
href="rejectLeave?id=<%=rs.getInt("id")%>">
Reject
</a>

</td>

</tr>

<%
}

}
catch(Exception e){
e.printStackTrace();
}
%>

</table>

</div>

</div>
<div class="footer">
© 2026 Employee Leave Management System | Corporate Portal
</div>

</body>
</html>