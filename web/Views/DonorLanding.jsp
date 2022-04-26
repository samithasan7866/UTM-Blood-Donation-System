<%-- 
    Document   : DonorLanding
    Created on : Dec 30, 2021, 7:14:33 AM
    Author     : Amit Hasan Sadhin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Models.Donor"%>

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
        <link rel="stylesheet" href="css/navigation.css"/>
        <link rel="stylesheet" href="css/style.css" />
        <title>Document</title>
    </head>

    <style>
        .form-row {
            padding-bottom: 20px;
            justify-content: center;
            align-items: center;
        }
        .btn1 {
            width: 40%;
        }
    </style>

    <body>

        <%
            Donor donor = (Donor) session.getAttribute("donorInforation");
        %>
        <div id="wrapper">
            <%@include file="PagesHeaders.jsp" %>

            <section class="form" >
                <div class="container" style="margin-left: 0%; ">
                    <div class="row no-gutters">
                        <div class="col-7" >
                            <img src="img/Donor.png" alt="" class="img-fluid" style="margin-bottom: 100%;"/>
                        </div>

                        <div class="col-5">
                            <div class="row no-gutters form-row">
                                <div class="form-row pt-2">
                                    <h1 class="font-weight-bold py-3 px-12"><%=donor.getDonorName()%>'s Information</h1> 
                                </div>
                                <div class="col-4">
                                    <h5>Donor Name: </h5>
                                </div>
                                <div class="col-8">
                                    <h5> <%=donor.getDonorName()%> </h5>
                                </div>
                            </div>
                            <div class="row no-gutters form-row">
                                <div class="col-4">
                                    <h5>Donor Age: </h5>
                                </div>
                                <div class="col-8">
                                    <h5> <%=donor.getAge()%> </h5>
                                </div>
                            </div>
                            <div class="row no-gutters form-row">
                                <div class="col-4">
                                    <h5>Donor Email: </h5>
                                </div>
                                <div class="col-8">
                                    <h5><%=donor.getEamil()%> </h5>
                                </div>
                            </div>
                            <div class="row no-gutters form-row">
                                <div class="col-4">
                                    <h5>Donor Phone No: </h5>
                                </div>
                                <div class="col-8">
                                    <h5> <%=donor.getDonorPhoneNumber()%> </h5>
                                </div>
                            </div>
                            <div class="row no-gutters form-row">
                                <div class="col-4">
                                    <h5>Donor Address: </h5>
                                </div>
                                <div class="col-8">
                                    <h5> <%=donor.getDonorAddress()%> </h5>
                                </div>
                            </div>
                            <div class="row no-gutters form-row">
                                <div class="col-4">
                                    <h5>Donor Gender: </h5>
                                </div>
                                <div class="col-8">
                                    <h5> <%=donor.getGender()%> </h5>
                                </div>
                            </div>   

                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>