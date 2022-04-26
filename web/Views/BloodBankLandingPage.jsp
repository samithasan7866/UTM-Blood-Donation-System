<%-- 
    Document   : BloodBankAddingPage
    Created on : Dec 30, 2021, 7:15:19 AM
    Author     : Amit Hasan Sadhin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="Models.BloodBank"%>
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
        <link rel="stylesheet" href="css/navigation.css" />
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
            BloodBank bloodBank = (BloodBank) session.getAttribute("bloodBankInformation");
        %>
        <div id="wrapper">
            <%@include file="PagesHeaders.jsp" %>

            <section class="form">
                <div class="container">
                    <div class="row no-gutters">
                        <div class="col-6">
                            <img src="img/blood-bank.png" alt="" class="img-fluid" />
                        </div>

                        <div class="col-5">
                            <div class="row no-gutters form-row">
                                <div class="form-row pt-2">
                                    <h1 class="font-weight-bold py-3 px-12">Blood-Bank landing Page</h1> 
                                </div>
                                <div class="col-4">
                                    <h5>Blood Bank Name: </h5>
                                </div>
                                <div class="col-8">
                                    <h5> <%= bloodBank.getBloodBankName()%>< </h5>
                                </div>
                            </div>
                            <div class="row no-gutters form-row">
                                <div class="col-4">
                                    <h5>Blood Bank Email: </h5>
                                </div>
                                <div class="col-8">
                                    <h5> <%= bloodBank.getEamil()%>< </h5>
                                </div>
                            </div>
                            <div class="row no-gutters form-row">
                                <div class="col-4">
                                    <h5>Blood Bank Group Blood: </h5>
                                </div>
                                <div class="col-8">
                                    <h5>  <%= bloodBank.getBloodGroup()%>< </h5>
                                </div>
                            </div>
                            <div class="row no-gutters form-row">
                                <div class="col-4">
                                    <h5>Blood Bank Address: </h5>
                                </div>
                                <div class="col-8">
                                    <h5> <%= bloodBank.getBloodBankAddress()%>< </h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>