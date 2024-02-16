<?php
    // session_start();
    // error_reporting(0);
    // include('includes/dbconn.php');
    // if(isset($_POST['signin']))
    // {
    //     $uname=$_POST['username'];
    //     $password=md5($_POST['password']);
    //     $sql ="SELECT EmailId,Password,Status,id FROM tblemployees WHERE EmailId=:uname and Password=:password";
    //     $query= $dbh -> prepare($sql);
    //     $query-> bindParam(':uname', $uname, PDO::PARAM_STR);
    //     $query-> bindParam(':password', $password, PDO::PARAM_STR);
    //     $query-> execute();
    //     $results=$query->fetchAll(PDO::FETCH_OBJ);

    //     if($query->rowCount() > 0)
    //     {
    //         foreach ($results as $result) {
    //             $status=$result->Status;
    //             $_SESSION['eid']=$result->id;
    //     }
    //         if($status==0)
    //     {
    //         $msg="In-Active Account. Please contact your administrator!";
    //     } else  {
    //         $_SESSION['emplogin']=$_POST['username'];
    //         echo "<script type='text/javascript'> document.location = 'employees/leave.php'; </script>";
    //     }
    //         }   else  {
    //             echo "<script>alert('Sorry, Invalid Details.');</script>";
    //             }

    // }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Management System</title>
    <style>
        body {
            background: #1362ad;
            font-family: 'Source Sans Pro', sans-serif;
            color: #fff;
            font-weight: 300;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background: linear-gradient(to bottom right, #0CABD2 0%, #53e3a6 100%);
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            height: 400px;
            margin-top: -190px;
            overflow: hidden;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        .management-box {
            position: absolute;
            top: 51%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #3ED2B3;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            color: #fff;
            height: 300px;
            width: 30%;
            text-align: center;
           
        }



        h2 {
            margin-bottom: 20px;
        }

        .button-container {
            display: flex;
            flex-direction: column;
        }

        .action-button {
            padding: 10px;
            margin-bottom: 20px;
            background-color: #2ecc71;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 30px;
            transition: background-color 0.3s;
        }

        .action-button:hover {
            background-color: #27ae60;
        }
        
a{
    text-decoration: none;
    color: #fff;
}

    </style>
</head>
<body>

    <div class="container"></div>
    
    <div class="management-box">
        <h1>Management System</h1>
        
        <div class="button-container">
            <button class="action-button">Book Hall</button>
            <button class="action-button"> <a href="index1.php">Leave Request</a></button>
        </div>
    </div>

</body>
</html>
