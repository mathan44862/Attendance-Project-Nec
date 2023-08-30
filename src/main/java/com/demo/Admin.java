package com.demo;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import javax.servlet.http.HttpServlet;


@WebServlet("/admin")
public class Admin extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  
    {  
        String s1 = req.getParameter("email");
        String s2 = req.getParameter("password");
        System.out.println(s1+" "+s2);
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");  
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from admin");  
            while(rs.next()){
                if(s1.equals(rs.getString(1))){
                    if(s2.equals(rs.getString(2))){
                        req.getRequestDispatcher("adminpage.jsp").forward(req, res); 
                    }
                }
            }
        }
        catch(Exception e){
            System.out.println(e);
        } 
    } 
}
