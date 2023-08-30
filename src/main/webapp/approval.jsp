<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList" %>
<% ArrayList<String> a1 = (ArrayList<String>)request.getAttribute("hi"); %>
<% String role = (String)request.getAttribute("role"); %>
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
            padding:10px;
            background-color:#e5e5e5; 
            width:800px;
            height: 250px;
            margin-top: 220px;
            margin-left: 300px;
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
            padding-left: 10px;
        }
        #tablecontainer{
            font-size: 10px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding-left: 70px;
        }
    </style>
</head>
<body>
        <div class="box">
        <table id="tablecontainer">
            <tr>
              <th>Id</th>
              <th>Date</th>
              <th>Month</th>
              <th>Year</th>
              <th>Reason</th>
              <th>Approval All</th>
            </tr>
          </table>
    </div>
    <script>
        var size = ('<%=a1.size()%>');
        var list = '<%=a1%>';
        if(size!=0){
            list = list.replace("[", ",");
            list = list.replace("]", ",");
            var det = list.split(",");
            console.log(det);
            var start=1;
            var table = document.getElementById("tablecontainer");
            var row=1;
            for(var i=0;i<size;i++){
                if(i%5==0){
                    var tablerow = table.insertRow(row);
                    row++;
                }
                var cell = tablerow.insertCell(i%5);
                cell.innerHTML = det[start];
                start++;
                if(i%5==4){
                    var cell = tablerow.insertCell(5);
                    cell.innerHTML = '';
                }
            }
            let rows = table.rows;
            for (let i = 1; i < rows.length; i++) {
                let cols = rows[i].cells;
                console.log(cols);
                let lastCol = rows[i]['cells'][cols.length-1];
                let button = document.createElement('button');
                button.innerHTML = 'Approval'; 
                button.setAttribute('onclick', `sayHi(${i})`);
                lastCol.appendChild(button);
            }
        }
        function sayHi(rowIdx) {
            let table = document.getElementById('tablecontainer');
            let rows = table.rows;
            let firstName = rows[rowIdx]['cells'][0].innerText;
            var role2= '<%=role%>';
            document.location.href='http://localhost:8080/demo/approvalrequest?role='+role2+'&id='+firstName;
        }
    </script>
</body>
</html>