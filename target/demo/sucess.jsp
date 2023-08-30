<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit</title>
    <style>
     *{
    margin:0;
    padding:0;
    box-sizing: border-box;
    font-family: 'Poppins',sans-serif;
    }
    .container{
        width: 100%;
        height:100vh;
        background-image: url('Home.jpg');
        background-repeat: no-repeat;
        background-size: cover;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .btn{
        padding: 10px 60px;
        background: #fff;
        border:0;
        outline: none;
        cursor:pointer;
        font-size: 22px;
        font-weight: 500;
        border-radius:30px;
    }
    .popup{
        width: 400px;
        background: #fff;
        border-radius: 6px;
        position: absolute;
        top:0;
        left:50%;
        transform:translate(-50%,-50%) scale(0.1);
        text-align: center;
        padding: 0 30px 30px;
        color: #333;
        visibility: hidden;
        transition: transform 0.4s, top 0.4s;
    }
    .open-Popup{
        visibility: visible;
        top: 50%;
        transform:translate(-50%,-50%) scale(1);
    }
    .popup img{
        width: 100px;
        margin-top: -50px;
        border-radius: 50%;
        box-shadow:0 2px 5px rgba(0,0,0,0.2);
    }
    .popup h2{
        font-size: 38px;
        font-weight: 500;
        margin: 30px 0 10px;

    }
    .popup button{
        width: 100%;
        margin-top: 50px;
        padding: 10px 0;
        background: #6fd649;
        color:#fff;
        border:0;
        outline:none;
        font-size:18px;
        border-radius: 4px;
        cursor: pointer;
        box-shadow:0 2px 5px rgba(0,0,0,0.2);
    }
    </style>
</head>
<body>
    <div class="container">
        <div class="popup" id="popup">
            <img src="tick.jpg" alt="">
            <h4>Successfully Submited</h4>
            <p>Your details has been successfully submitted</p><br>
        </div>
    </div>
    <script>
        let popup=document.getElementById("popup");
        openPopup();
        function openPopup(){
            popup.classList.add("open-Popup");
        }   
    </script>
</body>
</html>
