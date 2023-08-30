<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
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
        <form action="http://localhost:8080/demo/adminpage" method="get">
            <label for="staff_mail_id" style="margin-left: 50px;">Email Id</label>
            <input type="email" name="staff_mail_id" id="staff_mail_id" style="border-radius: 20px;"><br><br>
            <label for="staff_password" style="margin-left: 50px;">Password</label>
            <input type="password" name="staff_password" id="staff_password" style="border-radius: 20px;"><br><br>
            <label for="staff_id" style="margin-left: 50px;">Id</label>
            <input type="text" name="staff_id" id="staff_id" style="border-radius: 20px;"><br><br>
            <label for="staff_name" style="margin-left: 50px;">Name</label>
            <input type="text" name="staff_name" id="staff_name" style="border-radius: 20px;"><br><br>
            <label for="staff_dept" style="margin-left: 50px;">Department</label>
            <input type="text" name="staff_dept" id="staff_dept" style="border-radius: 20px;"><br><br>
            <label for="role" style="margin-left: 50px;">Role</label>
            <input type="text" name="role" id="role" style="border-radius: 20px;"><br><br>
            <div style="float: left;"><button type="submit" style="margin-left: 250px;";>Submit</button></div>
        </form>
    </div>
</body>
</html>