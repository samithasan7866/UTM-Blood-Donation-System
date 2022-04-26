<%-- 
    Document   : BloodBankList
    Created on : Dec 30, 2021, 7:14:53 AM
    Author     : Hamzeh Bajbouj
--%>

<%@page import="Models.HospitalAccount"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>

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
    <div class="container-fluid">
      <%@include file="PagesHeaders.jsp" %>


      <section class="form">
        <div class="row no-gutters">
          <div class="col-6 back">
            <img
              src="Views/img/hospital.png"
              alt="Responsive image"
              class="img-fluid donate"
              style="height: 100%;"
            />
          </div>

          <div class="col-lg-6 px-5 pt-5">
            <div class="form-row">
              <h1 class="font-weight-bold py-3 px-12">Hospital</h1>
            </div>

            <div class="form-row">
              <table>
                <tr>
                  <th>Hospital Name </th>
                  <th align="center">Address</th>
                </tr>


<% 
ArrayList<HospitalAccount> hospitalsList = (ArrayList<HospitalAccount>) request.getAttribute("hospitalsList");
                            for(int i=0 ; i < hospitalsList.size();i++)
                            {
%>
                <tr>
                    <td><%=hospitalsList.get(i).getHospitalName()%></td>
                    <td> <a href="<%=hospitalsList.get(i).getHospitalAddress()%>" target="_blank"> 
                          <button class="button button1">Open Map</button> </a></td>
                </tr>
                <% }   %>
              </table>
            </div>
          </div>
        </div>
      </section>
    </div>
  </body>
</html>
