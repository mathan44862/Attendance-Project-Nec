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
import java.time.Month;
import java.util.ArrayList;
import javax.servlet.http.HttpServlet;


@WebServlet("/showabsenthod")
public class ShowabsentHod extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  
    {
        String dept = req.getParameter("dept");
        String day1 = (String) req.getParameter("date");
        String month1 = (String) req.getParameter("month");
        String year1 = (String) req.getParameter("year");
        LocalDate currentdate = LocalDate.now();
        int day2 =currentdate.getDayOfMonth();
        int  month2 = currentdate.getMonthValue();
        int  year2 = currentdate.getYear();
        String d = ""+day2;
        String m = ""+month2;
        String y = ""+year2;
        String day = (day1==null)?d:day1;
        String month = (month1==null)?m:month1;
        String year = (year1==null)?y:year1;
        System.out.print(day+" "+month+" "+year+" "+dept);
        ArrayList<ArrayList<String>> a = new ArrayList<>();
        try{  

            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root"); 
            Statement stmt=con.createStatement();      
            ResultSet rs=stmt.executeQuery("select * from staff_leave where staff_dept='"+dept+"'");  
            while(rs.next()){
                ArrayList<String> a1 = new ArrayList<>();
                if(rs.getString(4).equals("staff")){
                    if(rs.getString(5).equals(day) && rs.getString(6).equals(month) && rs.getString(7).equals(year)){
                    a1.add(rs.getString(1));
                    a1.add(rs.getString(2));
                    a1.add(rs.getString(3));
                    a1.add(rs.getString(4));
                    a1.add(rs.getString(5));
                    a1.add(rs.getString(6));
                    a1.add(rs.getString(7));    
                    a1.add(rs.getString(8));
                    a.add(a1);
                    }
                }
            }
            System.out.println(dept);
            req.setAttribute("dept",dept);
            req.setAttribute("absentlist",a);
            req.getRequestDispatcher("AbsentList.jsp").forward(req, res); 
        }
        catch(Exception e){
             System.out.println(e);
        }
    }
}
