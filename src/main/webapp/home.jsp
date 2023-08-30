<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;1,200&display=swap');
        body{
            font-family: 'Poppins', sans-serif;
            background-image: url('Home.jpg');      
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;   
        }
        .home{
            font-family: 'Poppins', sans-serif;
            background-color: whitesmoke;
            position:absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            display: block;
            width: 300px;
            height: 50%;
            padding: 30px;
            border-radius: 20px;
        }
        #logo{
            text-align: center;
        }
        #elements{
            font-family: 'Poppins', sans-serif;
            padding: 10px;
            text-align:left;
            border-radius: 20px;
            margin-left: 20px;
        }
        #elements input {
            display: flex;
            flex-direction:column;
        }
        #button{
            font-family: 'Poppins', sans-serif;
            padding: 20px;
            border-radius: 10px;
            margin-left: 200px;
            font-size: 15px;
        }
        #adminelement{
            font-family: 'Poppins', sans-serif;
            padding: 20px;
            border-radius: 20px;
            margin-left: 15px;
        }
    </style>
</head>
<body>
    <div class="home">
        <div id="logo"><img src="NEC_Logo-00.png" class="logo" ></div>
        <br>
        <form action="http://localhost:8080/demo/homepage" method="get">
            <div id="elements">
                <label for="email" style="font-size: 20px; color:rgb(0, 0, 0)">Email Id</label>
            <input type="email" name="email" id="email" style="border-radius: 10px;font-size:20px;"><br><br>
            <label for="password" style="font-size: 20px; ">Password</label>
            <input type="password" name="password" id="password" style="border-radius: 10px;font-size: 20px;"><br><br>
            </div>
            <div id="adminelement" style="float: left;"><a href="admin.jsp" style="border: 20px; font-size: 20px;text-decoration:none;color:rgb(0, 0, 0);">Admin ?</a></div>
            <div id="button"><button style="border: 10px; color:rgb(242, 238, 238); font-size: 20px;background-color: rgb(76, 73, 71);cursor: pointer;" type="submit">Login</button></div>
        </form>
    </div>
</body>
</html>