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

@WebServlet("/newabsent")
public class NewAbsent extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  
    {  
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
        System.out.println(lv);
        ArrayList<Integer> a = new ArrayList<>();
        try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");       
            String query1 = "insert into staff_"+s1+"_leave values("+date[2]+","+date[1]+","+date[0]+")";
            PreparedStatement preparedStmt1 = con.prepareStatement(query1);
            preparedStmt1.execute();
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");  
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");  
                Statement stmt=con1.createStatement();  
                ResultSet rs=stmt.executeQuery("select "+lv+" from staff_"+s1+"_leave_year where year="+date[0]);  
                while(rs.next()){
                    System.out.print(rs.getInt(1));
                    a.add(rs.getInt(1));
                }
            }
            catch(Exception e){
                System.out.println(e);
            }
            int a1 = a.get(0);
            a1++;
            String query2 = "update staff_"+s1+"_leave_year set "+lv+" = "+a1;
            PreparedStatement preparedStmt2 = con.prepareStatement(query2);
            preparedStmt2.execute();
        }
        catch(Exception e){
             System.out.println(e);
        }  
    } 
}
