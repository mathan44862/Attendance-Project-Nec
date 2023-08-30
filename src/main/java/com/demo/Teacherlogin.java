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


@WebServlet("/teacherlogin")
public class Teacherlogin extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  
    {  
            String i = (String)req.getAttribute("id");
            String y = (String)req.getAttribute("year");
            String m = (String)req.getAttribute("month");
            String s3 = (String)req.getAttribute("role");
            String i1 = (String)req.getParameter("id");
            String y1 = req.getParameter("year");
            String m1 = req.getParameter("month");
            String id = (i==null)?i1:i;
            String year = (y==null)?y1:y;
            String month = (m==null)?m1:m;
            System.out.print(month);
            ArrayList<String> a = new ArrayList<>();
            try{  
                Class.forName("com.mysql.cj.jdbc.Driver");  
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");  
                Statement stmt=con.createStatement();  
                ResultSet rs=stmt.executeQuery("select * from staff where staff_id='"+id+"'");  
                while(rs.next()){
                    a.add(rs.getString(4));
                    a.add(rs.getString(5));
                    a.add(rs.getString(3));
                }    
            }
            catch(Exception e){
                 System.out.println(e);
            }  
            ArrayList<Integer> b = new ArrayList<>();
            try{  
                Class.forName("com.mysql.cj.jdbc.Driver");  
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");  
                Statement stmt1=con1.createStatement();  
                ResultSet rs1=stmt1.executeQuery("select * from staff_info where staff_id='"+id+"'");  
                while(rs1.next()){
                    b.add(rs1.getInt(2));
                    b.add(rs1.getInt(3));
                }
            }
            catch(Exception e){
                System.out.println(e);
            } 
            System.out.print(b);
            ArrayList<ArrayList<Integer>> c = new ArrayList<>();
            try{  
                Class.forName("com.mysql.cj.jdbc.Driver");  
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");  
                Statement stmt1=con1.createStatement();  
                ResultSet rs1=stmt1.executeQuery("select * from staff_"+id+"_leave_year");  
                while(rs1.next()){
                    ArrayList<Integer> c1 = new ArrayList<>();
                    c1.add(rs1.getInt(1));
                    c1.add(rs1.getInt(2));
                    c1.add(rs1.getInt(3));
                    c1.add(rs1.getInt(4));
                    c.add(c1);
                }
            }
            catch(Exception e){
                System.out.println(e);
            } 
            System.out.print(c);
            ArrayList<ArrayList<Integer> > e = new ArrayList<>();
            try{  
                Class.forName("com.mysql.cj.jdbc.Driver");  
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");  
                Statement stmt1=con1.createStatement();  
                ResultSet rs1=stmt1.executeQuery("select * from staff_"+id+"_leave");  
                while(rs1.next()){
                    ArrayList<Integer> d = new ArrayList<>();
                    d.add(rs1.getInt(1));
                    d.add(rs1.getInt(2));
                    d.add(rs1.getInt(3));
                    d.add(rs1.getInt(4));
                    e.add(d);
                }
            }
            catch(Exception e1){
                System.out.println(e1);
            }
            System.out.print(e);
            req.setAttribute("TeacherData",a);
            req.setAttribute("LeaveData", b);
            req.setAttribute("LeaveYear", c);
            req.setAttribute("LeaveDate", e);
            req.setAttribute("role", s3);
            req.getRequestDispatcher("teacher.jsp").forward(req, res);  
    } 
}