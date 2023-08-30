<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList" %>
<% ArrayList<String> a = (ArrayList<String>)request.getAttribute("TeacherData"); %>
<% ArrayList<Integer> b = (ArrayList<Integer>)request.getAttribute("LeaveData"); %>
<% ArrayList<ArrayList<Integer>> c = (ArrayList<ArrayList<Integer>>)request.getAttribute("LeaveYear"); %>
<% ArrayList<ArrayList<Integer>> d = (ArrayList<ArrayList<Integer>>)request.getAttribute("LeaveDate"); %>
<% String role = (String)request.getAttribute("role"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style2.css">
  
    <title>Teacher Profile</title>
    <style>
        body{
            background-image: url('Teacher.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;

        }
        .dim {
            box-shadow: 0 0 0 1000px rgba(0, 0, 0, .3);
            box-shadow: 0 0 0 100vmax rgba(0, 0, 0, .3);
        }
        #box{
            padding:10px;
            background-color:rgb(233, 210, 220);; 
            width:400px;
            height: 250px;
            border-radius: 10px;
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            transition: 2s;
        }
        #box.active{
            display: block;
            top: 50%;
            transition: 2s;
        }
        #mainbox.active{
            filter: blur(5px);
        }
        #box1{
            background-color:rgb(233, 210, 220);;   
            top: 50%;
            margin-left: 200px;
            float: left;
            display: block;
            width: 300px;
            height: 600px;
            margin-left: 100px;
            margin-top: 100px;
            padding: 30px;
            border-radius: 20px;
        }
        #box2{
            background-color:rgb(233, 210, 220);;   
            top: 50%;
            left: 900px;
            margin-top: 100px;
            margin-left: 100px;
            float: left;
            display: block;
            width: 650px;
            height: 600px;
            padding: 30px;
            border-radius: 20px;
        }
        #leavebox{
            display: flex;
        }
        .leaveboxelements{
            background-color: black;
            margin-left: 10px;
            padding: 10px;
            border-radius: 20px;
            border: 1px solid white;
        }
        .container2{
            padding: 0px;
            width: 600px;
            margin-left: 20px;
        }
        .container1 div{
            font-family: 'Poppins', sans-serif;
            background-color: rgb(255, 255, 255);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            border-radius:20px;
            padding:5px;
        }
        #box1container{
            font-family: 'Poppins', sans-serif;
            font-size: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color:black;
        }
        #box1containerele{
            font-family: 'Poppins', sans-serif;
            font-size: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: black;
        }
        #buttoncontainer1{
            font-family: 'Poppins', sans-serif;
            margin-top: 0px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        th,td{
            font-family: 'Poppins', sans-serif;
            padding-top: 20px;
            padding-right: 60px;
            color: black;
            cursor:pointer;
        }
        #tablecontainer{
            font-family: 'Poppins', sans-serif;
            font-size: 15px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color:black;
            padding-left: 10px;
        }
    </style>
</head>
<body>
    <div id="mainbox">
        <div id="box1">
            <img src="profile.jpg" style="margin-left: 100px;margin-top: 30px;border-radius: 30px;" width="100px" height="100px">  
            <h3 style="text-align: center;padding-top: 20px;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"><% out.print(a.get(0)); %></h3> 
            <h3 style="text-align: center;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"><% out.print(a.get(1)); %></h3>
            <h3 style="text-align: center;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"><% out.print(a.get(2)); %></h3>
            <h3 style="padding-left: 20px;padding-top: 20px;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;font-size: small;">ATTENDANCE PERCENTAGE:</h3>
            <div class="container">
                <div class="circular-progress">
                  <div class="value-container">0%</div>
                </div>
            </div>
        </div>
        <div id="box2" >
            <div>
                <div class="container1">
                    <div class="container2">
                        <div>
                            <br><br>
                            <div id="buttoncontainer1">
                                <button style="padding: 5px;width:30px;margin-left:20px;border-radius:20px;cursor: pointer;" id="yearl" onclick="yearl()"><</button>
                                <label for="calender" id="box1container">
                                    2023
                                </label>
                                <button style="padding: 5px;width:30px;margin-right:20px;border-radius:20px;cursor: pointer;" id="yearr" onclick="yearr()">></button>
                            </div>
                            <div id="buttoncontainer1">
                                <button style="padding: 5px;width:30px;margin-left:20px;border-radius:20px;cursor: pointer;" id="monthl" onclick="monthl()"><</button>
                                <label for="calender" id="box1containerele">
                                    January
                                </label>
                                <button style="padding: 5px;width:30px;margin-right:20px;border-radius:20px;cursor: pointer;" id="monthr" onclick="monthr()">></button>
                            </div>
                            <table id="tablecontainer">
                                <tr>
                                    <th>Sun</th>
                                    <th>Mon</th>
                                    <th>Tue</th>
                                    <th>Wed</th>
                                    <th>Thu</th>
                                    <th>Fri</th>
                                    <th>Sat</th>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div id="leavebox">
                    <h4 style="margin-left: 20px;">Vacation leave</h4>
                    <h1 class="leaveboxelements" id="v1"></h1>
                    <h1 class="leaveboxelements" id="v2"></h1>
                    <h1 class="leaveboxelements" id="v3"></h1>
                    <h1 class="leaveboxelements" id="v4"></h1>
                    <h1 class="leaveboxelements" id="v5"></h1>
                    <h1 class="leaveboxelements" id="v6"></h1>
                    <h1 class="leaveboxelements" id="v7"></h1>
                    <h1 class="leaveboxelements" id="v8"></h1>
                    <h1 class="leaveboxelements" id="v9"></h1>
                    <h1 class="leaveboxelements" id="v10"></h1>
                    <h1 class="leaveboxelements" id="v11"></h1>
                    <h1 class="leaveboxelements" id="v12"></h1>
                    <h1 class="leaveboxelements" id="v13"></h1> 
                    <h1 class="leaveboxelements" id="v14"></h1> 
                </div>
                <div id="leavebox">
                    <h4 style="margin-left: 20px;">Monthly leave</h4>
                    <h1 class="leaveboxelements" id="m1"></h1>
                    <h1 class="leaveboxelements" id="m2"></h1>
                    <h1 class="leaveboxelements" id="m3"></h1>
                    <h1 class="leaveboxelements" id="m4"></h1>
                    <h1 class="leaveboxelements" id="m5"></h1>
                    <h1 class="leaveboxelements" id="m6"></h1>
                    <h1 class="leaveboxelements" id="m7"></h1>
                    <h1 class="leaveboxelements" id="m8"></h1>
                    <h1 class="leaveboxelements" id="m9"></h1>
                    <h1 class="leaveboxelements" id="m10"></h1>
                    <h1 class="leaveboxelements" id="m11"></h1>
                    <h1 class="leaveboxelements" id="m12"></h1>
                </div>
                <div id="leavebox">
                    <h4 style="margin-left: 20px;">Emergency leave</h4>
                    <h1 class="leaveboxelements" id="e1"></h1>
                    <h1 class="leaveboxelements" id="e2"></h1>
                </div>
            </div>
            <div>
            <div>
                <button onclick="toggle()" style="margin-left: 500px;font-size: 15px;background-color: rgb(234, 235, 128);color: black;border-radius: 10px;float: left;cursor: pointer;" id="requestleave">Request for Leave</button><br><br>
                <input type="button" id="approvalbutton" onclick="approvalall()" style="margin-left: 500px;font-size: 15px;background-color: rgb(234, 235, 128);color: black;border-radius: 10px;float: left;display: none;cursor: pointer;" value="Approval Request"></input>
                <input type="button" id="hodleavecheck" onclick="hodleavecheck()" style="margin-left: 500px;font-size: 15px;background-color: rgb(234, 235, 128);color: black;border-radius: 10px;float: left;display: none;cursor: pointer;" value=" Today Leave"></input>
                <input type="button" id="leavebutton" onclick="showall()" style="margin-left: 500px;font-size: 15px;background-color: rgb(234, 235, 128);color: black;border-radius: 10px;float: left;display: none;cursor: pointer;" value=" Today Leave"></input>
            </div>
            <script>
                var role2= '<%=role%>';
                var dept = '<%=a.get(1)%>';
                if(role2=="hod"){
                   document.getElementById("approvalbutton").style.display="block";
                   document.getElementById("hodleavecheck").style.display="block";
                }
                if(role2=="hod" || role2=="ao" || role2=="coe" || role2=="principal"){
                   document.getElementById("approvalbutton").style.display="block";
                }
                if(role2=="secretory" || role2=="director" || role2=="ceo" || role2=="ceo"){
                   document.getElementById("leavebutton").style.display="block";
                   document.getElementById("requestleave").style.display="none";
                }
                function toggle(){
                    let blur = document.getElementById("mainbox");
                    blur.classList.toggle('active');
                    let blur1 = document.getElementById("box");
                    blur1.classList.toggle('active');   
                }
                function approvalall(){
                    document.location.href='http://localhost:8080/demo/approval?role='+role2+"&dept="+dept;
                }
                function showall(){
                    document.location.href='http://localhost:8080/demo/showabsent';
                }
                function hodleavecheck(){
                    document.location.href='http://localhost:8080/demo/showabsenthod?dept='+dept;
                }
            </script>
            </div>
        </div>
    </div>
    <div id="box">
        <form action="http://localhost:8080/demo/request" method="get">
         <div style="margin-top: 20px;">
             <label for="id" style="margin-left: 80px;">ID</label>
             <input type="text" name="id" id="id" style="border-radius: 20px;width: 80px;margin-left: 110px;"><br><br>
             <label for="date" style="margin-left: 80px;">Date</label>
             <input type="date" name="date" id="date" style="border-radius: 20px;width: 80px;margin-left: 100px;"><br><br>
             <label for="leave" style="margin-left: 80px;">Reason for leave</label>
             <div style="margin-left: 200px;">
                 <input type="radio" name="vacation" id="vacation" value="Vacation">
                 <label for="Vacation">Vacation</label><br>
                 <input type="radio" name="monthly" id="monthly" value="Monthly">
                 <label for="Vacation">Monthly</label><br>
                 <input type="radio" name="emergency" id="emergency" value="Emergency">
                 <label for="Vacation">Emergency</label>
             </div>
         </div>
         <br>
         <div style="float: left;"><button type="submit" style="margin-left: 250px;" ;>Submit</button></div>
        </form>
    </div>
    <script>
            var b1= parseInt('<%=b.get(0)%>');
            var b2= parseInt('<%=b.get(1)%>');
            console.log(b1+" "+b2);
            var c = JSON.parse('<%=c%>');
            var d = JSON.parse('<%=d%>');
            const date = new Date();
            var a3 = date.getDate();
            var a2 = date.getMonth()+1;
            var a1 = date.getFullYear();
            var oyear = date.getFullYear();
            var omonth = date.getMonth()+1;
            console.log(a1+" "+a2+" "+a3); 
            var row = 1;
            function yearl(){
                for(var i=1;i<=row;i++){
                document.getElementById("tablecontainer").deleteRow(1);
                }
                a1--;
                checknextprevmonth(a1,a2,a3);
            }
            function yearr(){
                for(var i=1;i<=row;i++){
                document.getElementById("tablecontainer").deleteRow(1);
                }
                a1++;
                checknextprevmonth(a1,a2,a3);
            }
            function monthr(){
                for(var i=1;i<=row;i++){
                document.getElementById("tablecontainer").deleteRow(1);
                }
                if(a2==12){
                    a2=1;
                    a1++;
                    checknextprevmonth(a1,a2,a3);
                }
                else{
                    a2++;
                    checknextprevmonth(a1,a2,a3);
                }
            }
            function monthl(){
                for(var i=1;i<=row;i++){
                document.getElementById("tablecontainer").deleteRow(1);
                }
                if(a2==1){
                    a2=12;
                    a1--;
                    checknextprevmonth(a1,a2,a3);
                }
                else{
                    a2--;
                    checknextprevmonth(a1,a2,a3);
                }
            }
            function checknextprevmonth(){
                if(a1==b1 && a1==oyear){
                    if(a2>=b2 && a2<=omonth){
                        show(a1,a2,a3);
                    }
                    else{
                        a2=b2;
                        show(a1,b2,a3);
                    }
                }
                else if(a1<=b1){
                    if(a2 > b2){
                        a1=b1;
                        show(b1,a2,a3);
                    }
                    else{
                        a1=b1;
                        a2=b2;
                        show(b1,b2,a3);
                    }
                }
                else if(a1>=oyear){
                    if(a2<omonth){
                        a1=oyear;
                        show(oyear,a2,a3);
                    }    
                    else{
                        a1=oyear;
                        a2=omonth;
                        show(oyear,omonth,a3);
                    }
                }
                else{
                    show(a1,a2,a3);
                }
            }
            show(a1,a2,a3);
            function show(a1,a2,a3){
                var x = month(a2);
                document.getElementById("box1container").innerHTML=a1;
                document.getElementById("box1containerele").innerHTML=x;
                var year;
                var day = 6;
                for(year=2000;year<a1;year++){
                    if(year%4==0 && year%100!=0){
                        day+=366;
                    }
                    else if(year%100==0 && year%400==0){
                        day+=366;
                    }
                    else{
                        day+=365;
                    }
                }
                var i=1;
                for(i=1;i<a2;i++){
                    switch(i){
                        case 1:
                        case 3:
                        case 5:
                        case 7:
                        case 8:
                        case 10:
                        case 12:
                            day+=31;
                            break;
                        case 4:
                        case 6:
                        case 9:
                        case 11:
                            day+=30;
                            break;
                        case 2:
                            if(a1%4==0 && a1%100!=0){
                                day+=29;
                            }
                            else if(a1%100==0 && a1%400==0){
                                day+=29;
                            }
                            else{
                                day+=28;
                            }
                            break;
                        default:
                            break;
                    }
                }
                row=1;
                var column = 0;
                var table = document.getElementById("tablecontainer");
                var tablerow = table.insertRow(row);
                for(var k=0;k<day%7;k++){
                    var cell = tablerow.insertCell(k);
                    cell.innerHTML = "-"; 
                }
                var m = monthdays(a2);
                for(var k=1;k<=m;k++)
                {
                    if(day%7==0){
                        row+=1;
                        var tablerow = table.insertRow(row);
                    }
                    var cell = tablerow.insertCell(day%7);
                    cell.innerHTML=""+k;
                    if(k==a3 && a2==omonth){
                        cell.style.color=" #16FF00";
                        cell.style.backgroundcolor="white";
                    }
                    for(var n=0;n<d.length;n++){
                        if(d[n][2]==a1 && d[n][1]==a2 && d[n][0]==k){
                           if(d[n][3] == 1){
                            cell.style.color="red";
                            cell.style.backgroundcolor="white"; 
                           }
                           else if(d[n][3] == 2){
                            cell.style.color="blue";
                            cell.style.backgroundcolor="white"; 
                           }
                           else if(d[n][3] == 3){
                            cell.style.color="#FF00FF";
                            cell.style.backgroundcolor="white"; 
                           }
                        }
                    }
                    day++;
                }
                leavedetails();
            }
            function month(x){
                    switch(x){
                        case 1:
                            return "Janurary";
                            break;
                        case 2:
                            return "Feburary";
                            break;
                        case 3:
                            return "March";
                            break;
                        case 4:
                            return "April";
                            break;
                        case 5:
                            return "May";
                            break;
                        case 6:
                            return "June";
                            break;
                        case 7:
                            return "July";
                            break;
                        case 8:
                            return "August";
                            break;
                        case 9:
                            return "September";
                            break;
                        case 10:
                            return "October";
                            break;
                        case 11:
                            return "November";
                            break;
                        case 12:
                            return "December";
                            break;
                    }
                
            }
            function monthdays(x){
                switch(x){
                    case 1:
                    case 3:
                    case 5:
                    case 7:
                    case 8:
                    case 10:
                    case 12:
                        return 31;
                        break;
                    case 4:
                    case 6:
                    case 9:
                    case 11:
                        return 30;
                        break;
                    case 2:
                        if(a1%4==0 && a1%100!=0){
                            return 29;
                        }
                        else if(a1%100==0 && a1%400==0){
                            return 29;
                        }
                        else{
                            return 28;
                        }
                        break;
                    default:
                        break;
                }
            }
            function leavedetails(){
                const v = ['v14','v13','v12','v11','v10','v9','v8','v7','v6','v5','v4','v3','v2','v1'];
                const m = ['m12','m11','m10','m9','m8','m7','m6','m5','m4','m3','m2','m1'];
                const e = ['e2','e1'];
                for(var i=0;i<14;i++){
                document.getElementById(v[i]).style.backgroundColor="white";
                }
                for(var i=0;i<12;i++){
                    document.getElementById(m[i]).style.backgroundColor="white";
                }
                for(var i=0;i<2;i++){
                    document.getElementById(e[i]).style.backgroundColor="white";
                }
                for(var i=0;i<c.length;i++){
                    if(c[i][0]==a1){
                        var vacation = c[i][1];
                        var Monthly = c[i][2];
                        var Emergency = c[i][3];
                    }
                }
                console.log(vacation+" "+Emergency+" "+Monthly);
                for(var i=0;i<vacation;i++){
                document.getElementById(v[i]).style.backgroundColor="red";
                }
                for(var i=0;i<Monthly;i++){
                    document.getElementById(m[i]).style.backgroundColor="blue";
                }
                for(var i=0;i<Emergency;i++){
                    document.getElementById(e[i]).style.backgroundColor="#FF00FF";
                }
                var progressBar = document.querySelector(".circular-progress");
                var valueContainer = document.querySelector(".value-container");
                var progressValue = 0;
                var percent = parseInt(vacation)+parseInt(Monthly)+parseInt(Emergency);
                percent = parseInt((percent/28)*100);
                var progressEndValue = 100-percent;
                var speed = 50;
                let progress = setInterval(() => {
                progressValue++;
                valueContainer.textContent = `${progressValue}%`;
                progressBar.style.background = `conic-gradient(
                    black ${progressValue * 3.6}deg,
                    white ${progressValue * 3.6}deg )`;
                if (progressValue == progressEndValue) {
                    clearInterval(progress);
                }
                }, speed);
            }
    </script>
</body>
</html> 