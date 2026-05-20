<html>
<head>
<title>Apply Leave</title>
</head>

<body>

<h1>Apply Leave</h1>

<form action="ApplyLeaveServlet" method="post">

Employee Name:
<input type="text" name="employeeName"><br><br>

Leave Type:
<select name="leaveType">
<option>Sick Leave</option>
<option>Casual Leave</option>
<option>Vacation</option>
</select><br><br>

From Date:
<input type="date" name="fromDate"><br><br>

To Date:
<input type="date" name="toDate"><br><br>

Reason:
<textarea name="reason"></textarea><br><br>

<input type="submit" value="Submit Leave">

</form>

</body>
</html>