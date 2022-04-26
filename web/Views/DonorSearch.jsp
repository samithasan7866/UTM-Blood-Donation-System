<%-- 
    Document   : DonorSearch
    Created on : Dec 30, 2021, 7:14:08 AM
    Author     : Hamzeh Bajbouj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="Models.*"%>
<%@ page import="java.lang.Integer"%>
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
    <link rel="stylesheet" href="css/navigation.css" />
    <link rel="stylesheet" href="css/style.css" />
    <title>Document</title>
  </head>
  <body>
      <%@include file="PagesHeaders.jsp" %>
    <div class="container-fluid">
<!--      <nav class="navigation">
        <div class="row">
          <div class="col-4">
            <img src="img/logo.png" alt="" />
          </div>
        </div>
      </nav>-->

      <section class="form">
        <div class="row no-gutters">
          <div class="col-8 back">
            <img
              src="img/donate.png"
              alt="Responsive image"
              class="img-fluid donate"
              style="height: 70%;"
            />
          </div>

          <div class="col-4 px-5 pt-5">
            <div class="form-row">
              <h1 class="font-weight-bold py-3 px-12">Search for a Donor</h1>
            </div>
              <form action="${pageContext.request.contextPath}/DonorSearchServlet" method="post">
              <div class="form-row">
                <div class="input">
                  <p>Blood Group:</p>
                  <input name="bloodgroup" type="text" placeholder="" class="form-control" required />
                </div>
              </div>

              <div class="form-row">
                <div class="input">
                    <input type="submit" class="btn1" value="Search Donor">
                </div>
              </div>
            </form>
          </div>
        </div>
      </section>
    </div>
  </body>
</html>
