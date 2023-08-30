<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList" %>
<% String dept = (String)request.getAttribute("dept"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <title>Teacher Profile</title>
    <style>
         body{
            background-image: url('Home.jpg');         
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
        .box{
            padding:auto;
            background-color:#e5e5e5; 
            width:1000px;
            height: auto;
            margin-top: 60px;
            margin-left: 200px;
            border-radius: 10px;
        }
        th{
            font-size: 15px;
            padding-top: 20px;
            padding-right: 60px;
            padding-left: 10px;
        }
        td{
            font-size: 15px;
            padding-top: 20px;
            padding-right: 60px;
        }
        #tablecontainer{
            font-size: 10px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding-left: 50px;
        }
        #box1{
            display: flex;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin-left: 220px;
            margin-top: 100px;
        }
    </style>
</head>
<body>
        <div id="box1">
           <form id="myForm" action="http://localhost:8080/demo/showabsenthod?">
                <input type="text" name="dept" id="dept">
                <label for="Date" style="margin-left: 100px;">Date</label>
                <input type="text" name="date">
                <label for="Date" style="margin-left: 100px;">Month</label>
                <input type="text" name="month">
                <label for="Date" style="margin-left: 100px;">Year</label>
                <input type="text" name="year">
                <button type="submit">Search</button>
           </form>
           <script>
                var dept ="<%=dept%>";
                console.log(dept);
                document.getElementById("dept").value = dept;
           </script>
        </div>
        <div class="box">
        <table id="tablecontainer">
            <tr>
              <th>Name</th>
              <th>Dept</th>
              <th>ID</th>
              <th>Role</th>
              <th>Date</th>
              <th>Month</th>
              <th>Year</th>
              <th>Reason</th>
            </tr>
                <%ArrayList<ArrayList<String>> a1 = (ArrayList<ArrayList<String>>)request.getAttribute("absentlist");
                
                    for (int i=0;i<a1.size();i++)
                    {
                    ArrayList<String> g = a1.get(i);
                    %>
                    <tr>
                        <td><% out.print(g.get(0)); %></td>
                        <td><% out.print(g.get(1)); %></td>
                        <td><% out.print(g.get(2)); %></td>
                        <td><% out.print(g.get(3)); %></td>
                        <td><% out.print(g.get(4)); %></td>
                        <td><% out.print(g.get(5)); %></td>
                        <td><% out.print(g.get(6)); %></td>
                        <td><% out.print(g.get(7)); %></td>
                    </tr>
                    <%
                    }
                    %>
          </table>
    </div>
</body>
</html>