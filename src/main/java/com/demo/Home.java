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

@WebServlet("/homepage")
public class Home extends HttpServlet {
    public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  
    {  
        String s1 = req.getParameter("email");
        String s2 = req.getParameter("password");
        String s3 ="" ;
        System.out.println(s1+" "+s2);
        try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");  
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from staff");  
            ArrayList<String> a = new ArrayList<>();
            while(rs.next()){
                if(s1.equals(rs.getString(1))){
                    if(s2.equals(rs.getString(2))){
                        a.add(rs.getString(4));
                        a.add(rs.getString(5));
                        a.add(rs.getString(3));
                        s3 = rs.getString(6);
                    }
                }
            }
            LocalDate date = LocalDate.now();
            String year = ""+date.getYear();
            String month = ""+date.getMonthValue();
            if(a.size()!=0){
                req.setAttribute("id",a.get(2));
                req.setAttribute("year",year);
                req.setAttribute("month",month);
                req.setAttribute("role", s3);
                req.getRequestDispatcher("teacherlogin").forward(req, res); 
            }    
            con.close();
        }
        catch(Exception e){
             System.out.println(e);
        }  
    } 
} 
