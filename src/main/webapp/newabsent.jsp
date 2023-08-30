<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New absent</title>
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
            width:400px;
            height: 250px;
            margin-top: 220px;
            margin-left: 450px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="box">
       <form action="http://localhost:8080/demo/newabsent" method="get">
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
        <div style="float: left;"><button type="submit" style="margin-left: 250px;";>Submit</button></div>
       </form>
    </div>
</body>
</html>