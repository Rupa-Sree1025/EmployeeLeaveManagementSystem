package com.leave.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leave.db.DBConnection;

@WebServlet("/applyLeave")
public class LeaveServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String leaveType = request.getParameter("leaveType");
        String fromDate = request.getParameter("fromDate");
        String toDate = request.getParameter("toDate");
        String reason = request.getParameter("reason");

        try {

            Connection con = DBConnection.getConnection();

            String query =
            "insert into leaves(employee_name, leave_type, from_date, to_date, reason) values(?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, leaveType);
            ps.setString(3, fromDate);
            ps.setString(4, toDate);
            ps.setString(5, reason);

            int rows = ps.executeUpdate();

            if (rows > 0) {

                out.println("<h1>Leave Applied Successfully</h1>");

            } else {

                out.println("<h1>Leave Application Failed</h1>");
            }

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }
    }
}