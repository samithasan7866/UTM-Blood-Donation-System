<%-- 
    Document   : JoinUs
    Created on : Dec 30, 2021, 7:11:46 AM
    Author     : Hamzeh Bajbouj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
     
     <link rel="stylesheet" href="css/navigation.css">
     <link rel="stylesheet" href="css/style.css">
     <link rel="stylesheet" href="css/card.css">
     <title>Document</title>
</head>

<style>
    

</style>

<body>

    <nav class="navigation">
        <div class="row">
            <div class="col-4">
                <img src="img/logo.png" alt="">
            </div>
        </div>

        <!-- <div class="col-8">
            <ul class="nav">
                <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Join Us</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Blood Bank</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Hospital</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Search Donor</a></li>
                <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
            </ul>
        </div> -->

    </nav>
    
    <div class="container-fluid">
        <div class="row no-gutters">

            <div class="col-8 ">

                <div class="title">
                    <h3>Select Registration Form</h3>
                </div>
                <div class="row">
                    <div class="col-4 cdiv">
                        <div class="card text-center">
                            <img src="img/donor_reg.png" alt=""class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">Donor Registration</h5>
                                <!-- <a href="#">Registration</a> -->
                            </div>
                        </div>
                        <div class="cbutton">
                             <a href="DonorSignUp.jsp">
                            <button type="button" class="btn1 ">Click Here</button>
                            </a>
                        </div>

                         
                    </div>
                    <div class="col-4">
                        <div class="card text-center">
                            <img src="img/hospital.png" alt=""class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">Hospital Registration</h5>
                            </div>
                            
                        </div>
                        <div class="cbutton">
                             <a href="HospitalSignUp.jsp">
                            <button type="button" class="btn1 ">Click Here</button>
                            </a>
                        </div>

                    </div>
                    <div class="col-4">
                        <div class="card text-center">
                            <img src="img/blood_bank.png" alt=""class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">Blood Bank Registration</h5>
                            </div>
                            
                        </div>
                        <div class="cbutton">
                             <a href="BloodBankSignUp.jsp">
                            <button type="button" class="btn1 ">Click Here</button>
                            </a>                        </div>
                    </div>
                </div>
                    
                
            </div>


            <div class="col-4">
                <img src="img/drop.png" alt="" class="img-fluid">
            </div>
        </div>
    </div>
    
</body>

</html>