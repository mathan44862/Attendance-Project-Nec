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

@WebServlet("/request")

public class Request extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  
    {  
        String role ="";
        String dept ="";
        String s1 = req.getParameter("id");
        String s2 = req.getParameter("date");
        String s3 = req.getParameter("vacation");
        String s4 = req.getParameter("monthly");
        String s5 = req.getParameter("emergency");
        String[] date = s2.split("-");
        System.out.print(date[0]);
        String leave;
        String lv;
        if(s4==null && s5==null){
            lv="vacation_leave";
            leave=s3;
        }
        else if(s3==null && s5==null){
            lv="monthly_leave";
            leave = s4;
        }
        else{
            lv="emergency_leave";
            leave = s5;
        }
        try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");       
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from staff where staff_id='"+s1+"'");  
            while(rs.next()){
                dept=rs.getString(5);
                role=rs.getString(6);
            }
        }
        catch(Exception e){
             System.out.println(e);
        }  
        System.out.println(role);
        try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");       
            String query1 = "insert into leave_request values('"+s1+"','"+dept+"',"+date[2]+","+date[1]+","+date[0]+",'"+lv+"','"+role+"')";
            PreparedStatement preparedStmt1 = con.prepareStatement(query1);
            preparedStmt1.execute();
        }
        catch(Exception e){
             System.out.println(e);
        } 
        req.getRequestDispatcher("sucess.jsp").forward(req, res);  
    } 
}
