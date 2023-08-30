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
            height: 200px;
            margin-top: 220px;
            margin-left: 450px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div>
        <div class="box">
            <button style="margin-left: 15px;margin-top: 70px;" onclick="newteacher()">New Teacher</button>
            <button style="margin-left: 15px;margin-top: 10px;" onclick="newabsent()">New Leave</button>
            <button style="margin-left: 15px;margin-top: 10px;" onclick="approval()">Approval Leave</button>
        </div>
        <script>
            function newteacher(){
                document.location.href='http://localhost:8080/demo/newteacher.jsp';
            }
            function newabsent(){
                document.location.href='http://localhost:8080/demo/newabsent.jsp';
            }
            function approval(){
                document.location.href='http://localhost:8080/demo/approval';
            }
        </script>
    </div>
</body>
</html>