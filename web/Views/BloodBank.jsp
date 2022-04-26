<%-- 
    Document   : HospitalList
    Created on : Dec 30, 2021, 7:12:32 AM
    Author     : Hamzeh Bajbouj
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Models.BloodBank"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
    <link rel="stylesheet" href="Views/css/navigation.css" />
    <link rel="stylesheet" href="Views/css/style.css" />
    <title>Document</title>
  </head>
  <style></style>
  <body>
         <%@include file="PagesHeaders.jsp" %>
  
      
    <div class="container-fluid">
<!--      <nav class="navigation">
        <div class="row">
          <div class="col-4">
            <img src="Views/img/logo.png" alt="" />
          </div>
        </div>
      </nav>-->

      <section class="form">
        <div class="row no-gutters">
          <div class="col-6 back">
            <img
              src="Views/img/blood.png"
              alt="Responsive image"
              class="img-fluid donate"
              style="height: 80%;"
            />
          </div>

          <div class="col-lg-6 px-5 pt-5">
            <div class="form-row">
              <h1 class="font-weight-bold py-3 px-12">Blood Bank</h1>
            </div>

            <div class="form-row">
              <table >
                <tr>
                  <th>Blood Bank </th>
                  <th align="center">Address </th>
                </tr>
    <%
          ArrayList<BloodBank> bloodBanks = (ArrayList<BloodBank>) request.getAttribute("bloodBanksList");
                            for(int i=0 ; i < bloodBanks.size();i++)
                            { %>
                <tr>
                    <td><%=bloodBanks.get(i).getBloodBankName()%></td>
                    <td> <a href="<%=bloodBanks.get(i).getBloodBankAddress()%>" target="_blank"> 
                          <button class="button button1">Open Map</button> </a></td>
                </tr>
                <% }  %>

              </table>

            </div>
          </div>
        </div>
      </section>
    </div>
  </body>
</html>
