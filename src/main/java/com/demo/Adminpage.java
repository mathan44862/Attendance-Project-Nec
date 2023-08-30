package com.demo;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import javax.servlet.http.HttpServlet;


@WebServlet("/adminpage")
public class Adminpage extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  
    {  
        String s1 = req.getParameter("staff_mail_id");
        String s2 = req.getParameter("staff_password");
        String s3 = req.getParameter("staff_id");
        String s4 = req.getParameter("staff_name");
        String s5 = req.getParameter("staff_dept");
        String s6 = req.getParameter("role");
        System.out.println(s1+" "+s2+" "+s3+" "+s4+" "+s5+s6); 
        LocalDate date = LocalDate.now();
        int oyear = date.getYear();
        int omonth = date.getMonthValue();
        try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");   
            String query = "insert into staff values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')";
            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.execute();     
            String query1 = "insert into staff_info values('"+s3+"','"+oyear+"','"+omonth+"')";
            String query2 = "create table staff_"+s3+"_leave_year(year int,vacation_leave int , monthly_leave int ,emergency_leave int)";
            String query4 = "insert into staff_"+s3+"_leave_year values("+oyear+",0,0,0)";
            String query3 = "create table staff_"+s3+"_leave(day int , month int , year int)";
            PreparedStatement preparedStmt1 = con.prepareStatement(query1);
            PreparedStatement preparedStmt2 = con.prepareStatement(query2);
            PreparedStatement preparedStmt3 = con.prepareStatement(query3);
            PreparedStatement preparedStmt4 = con.prepareStatement(query4);
            preparedStmt1.execute();
            preparedStmt2.execute();
            preparedStmt3.execute();
            preparedStmt4.execute();
            con.close();
        }
        catch(Exception e){
             System.out.println(e);
        }  
    }  
}
