<%-- 
    Document   : AdminPanel
    Created on : Jan 16, 2022, 12:21:17 AM
    Author     : Hamzeh Bajbouj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="Models.*"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="AdminPagesNavHeaderStyles.jsp" %>
        <title>JSP Page</title>
        
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.active {
  background-color: #0be441;
}


table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
.header{
    background-color:#e20d0d;
}
/* h2{
    color:#e20d0d;
} */
h1{
    color:#e20d0d;
}
td, th {
  border: 1px solid #e20d0d;
  text-align: left;
  padding: 8px;
}
tr:nth-child() {
  background-color: #e71717;
}
</style>
    </head>
    <body>
        <%@include file="AdminPagesNavHeader.jsp" %>
        
        
<div align="center">
    <h1>UTM Blood Bank</h1>
    <h2>Admin Panel</h2>
</div>

    <div>
        <h2>Donors List</h2>

<table>
  <tr class="header">
    <th>Name</th>
    <th>Email</th>
    <th>Phone No.</th>
    <th>Gender</th>
    <th>Age</th>
    <th>Blood Group</th>
    <th>Address</th>
  </tr>
   <% 
ArrayList<Donor> donorList = (ArrayList<Donor>) request.getAttribute("donorsList");
                            for(int i=0 ; i < donorList.size();i++)
                            {
%>
  <tr>
    <td><%=donorList.get(i).getDonorName()%></td>
    <td><%=donorList.get(i).getEamil()%></td>
    <td><%=donorList.get(i).getDonorPhoneNumber()%></td>
    <td><%=donorList.get(i).getGender()%></td>
    <td><%=donorList.get(i).getAge()%></td>
    <td><%=donorList.get(i).getBloodGroup()%></td>
    <td> <a href="<%=donorList.get(i).getDonorAddress()%>" target="_blank"> 
            <button style="border: 2px solid red; background: lightcoral">Open Map</button> </a></td>
  </tr>
 <% }   %>
 
</table>
    </div>

    <br>

    <div>
        <h2>Hospitals Bank List</h2>

<table>
  <tr class="header">
    <th>Name</th>
    <th>Email</th>
    <th>Phone No.</th>
    <th>Address</th>
  </tr>
  
  <% 
ArrayList<HospitalAccount> hospitalsList = (ArrayList<HospitalAccount>) request.getAttribute("hospitalsList");
                            for(int i=0 ; i < hospitalsList.size();i++)
                            {
%>
  <tr>
    <td><%=hospitalsList.get(i).getHospitalName()%></td>
    <td><%=hospitalsList.get(i).getEamil()%></td>
    <td><%=hospitalsList.get(i).getHospitalMobileNo()%></td>
    <td> <a href="<%=hospitalsList.get(i).getHospitalAddress()%>" target="_blank"> 
            <button style="border: 2px solid red; background: lightcoral">Open Map</button> </a></td>
  </tr>
 <% }   %>
</table>

    <br>
    <div>
        <h2>Blood Banks List</h2>

<table>
  <tr class="header">
    <th>Name</th>
    <th>Email</th>
    <th>Blood Group.</th>
    <th>Address</th>
  </tr>
  <% 
ArrayList<BloodBank> bloodBanksList = (ArrayList<BloodBank>) request.getAttribute("bloodBanksList");
                            for(int i=0 ; i < bloodBanksList.size();i++)
                            {
%>
  <tr>
    <td><%=bloodBanksList.get(i).getBloodBankName()%></td>
    <td><%=bloodBanksList.get(i).getEamil()%></td>
    <td><%=bloodBanksList.get(i).getBloodGroup()%></td>
    <td> <a href="<%=bloodBanksList.get(i).getBloodBankAddress()%>" target="_blank"> 
            <button style="border: 2px solid red; background: lightcoral">Open Map</button> </a></td>
  </tr>
 <% }   %>
</table>

    </body>
</html>
