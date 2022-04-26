<%-- 
    Document   : DonorSignUp
    Created on : Dec 30, 2021, 7:13:47 AM
    Author     : Hamzeh Bajbouj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <title>Document</title>

</head>

<style>
    .form-row{
       
        padding-bottom: 10px;
        justify-content: center;
        align-items: center;
        
    }
    .btn1{
        width: 40%;
        
    }
   
</style>

<body>
    
<div id="wrapper">
  <%@include file="PagesHeaders.jsp" %>

    <section class="form">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-6">
                    <img src="img/bloodbank.png" alt="" class="img-fluid">
                </div>

                <div class="col-6">
                    <div class="form-row pt-2">
                        <h1 class="font-weight-bold py-3 px-12">Sign Up New Donor</h1> 
                    </div>

                    <form action="${pageContext.request.contextPath}/SignUpNewUsers" method="post">
                        <div class="row no-gutters form-row">
                            <div class="col-4">
                                <h5>Donor Name: </h5>
                            </div>
                            <div class="col-8 ">
                                <input name="name" type="text" placeholder="Enter your name" class="form-control" required>
                            </div>
                        </div>

                        <div class="row no-gutters form-row">
                            <div class="col-4">
                                <h5>Mobile No: </h5>
                            </div>
                            <div class="col-8 ">
                                <input name="phonenumber" type="text" placeholder="Enter your mobile number" class="form-control" required>
                            </div>
                        </div>

                        <div class="row no-gutters form-row">
                            <div class="col-4">
                                <h5>Email: </h5>
                            </div>
                            <div class="col-8">
                                <input name="email" type="email" placeholder="Enter Email address" class="form-control" required>
                            </div>
                        </div>

                        <div class="row no-gutters form-row">
                            <div class="col-4">
                                <h5>Gender: </h5>
                            </div>
                            <div class="col-8">
                                <select name="gender" class="form-control" required>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                        </div>

                        <div class="row no-gutters form-row">
                            <div class="col-4">
                                <h5>Age: </h5>
                            </div>
                            <div class="col-8">
                                <input name="age" type="number" placeholder="Enter your age" class="form-control" required>
                            </div>
                        </div>

                        <div class="row no-gutters form-row">
                            <div class="col-4">
                                <h5>Blood Group: </h5>
                            </div>
                            <div class="col-8">
                                <input name="bloodGroup" type="text" placeholder="Enter your blood group" class="form-control" required>
                            </div>
                        </div>

                        <div class="row no-gutters form-row">
                            <div class="col-4">
                                <h5>Address: </h5>
                            </div>
                            <div class="col-8">
                                <input name="address" type="text" placeholder="Enter your address" class="form-control" required>
                            </div>
                        </div>

                        <div class="row no-gutters form-row">
                            <div class="col-4">
                                <h5>Password: </h5>
                            </div>
                            <div class="col-8">
                                <input name="password" type="password" placeholder="Enter Password" class="form-control" required>
                            </div>
                        </div>
                        
                         <input type="hidden"  name="userType" value="donor">
                        <div class="form-row px-3 cbutton">
                            <div class="input">
                                <input class="btn1" type="submit" value="Register">
                            </div>
                        </div>
                       
                            
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>
    
</body>
</html>