<%-- 
    Document   : index
    Created on : Dec 30, 2021, 7:10:37 AM
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
    
    <link rel="stylesheet" href="Views/css/navigation.css">
    <link rel="stylesheet" href="Views/css/style.css">
    <title>Document</title>

</head>

<body>
    
<div class="container-fluid">
    <nav class="navigation">
        <div class="row">
            <div class="col-4">
                <img src="Views/img/logo.png" alt="">
            </div>
        </div>

    </nav> 

    <section class="form">
        
            <div class="row no-gutters">
                <div class="col-8 back">
                    <img src="Views/img/gigi.png" alt="Responsive image" class="img-fluid donate" style="height: 80%;">
                </div>

                <div class="col-4 px-5 pt-5">
                    <div class="form-row">
                        <h1 class="font-weight-bold py-3 px-12">Sign In</h1> 
                    </div>
                    <form action="SignInUserAuthorization" method="post">
                        
                        <div class="form-row">
                            <div class="input">
                                <select name="userType" class="form-control" required>
                                    <option value="" disabled selected hidden>Choose type</option>
                                    <option value="donor">Donor</option>
                                    <option value="hospital">Hospital</option>
                                    <option value="bloodbank">Blood Bank</option>
                                    <option value="adminUser">Admin</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="input">
                                <input name="email" type="email" placeholder="Email Address" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="input">
                                <input name="password" type="password" placeholder="*******"  class="form-control" required>
                            </div>
                        </div>
                        <p style="color: red"><strong> ${message}</strong></p>
                        <div class="form-row">
                            <div class="input">
    
                                <input class="btn1" type="submit" value="Login">
                            </div>
                        </div>
                        <div class="form-row">
                            <a href="#">Forget Password</a>
                        <p>Don't have an account? <a href="Views/JoinUs.jsp">Join Us</a></p>
                        
                        </div>
                    </form>
                </div>
            </div>
        

    </section>
</div>
    
</body>
</html>