<%-- 
    Document   : AdminDeletePage
    Created on : Jan 16, 2022, 1:37:20 AM
    Author     : Hamzeh Bajbouj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="AdminPagesNavHeaderStyles.jsp" %>
        <title>Edit Page</title> 
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }

            .active {
                background-color: #0be441;
            }


            h2 {
                color: red;
            }

            .center {
                text-align: center;
            }
            input:hover {
                color: rgb(14, 230, 42);
            }
        </style>
    </head>
    <body>

        <%@include file="AdminPagesNavHeader.jsp" %>
        <div class="center">
            <% if (request.getParameter("isSubmited") == null && session.getAttribute("RecordMessageStatusDelete") == null) {%>
            <h2 align="center">Select the record type to delete:</h2>

            <form action="AdminDeletePage.jsp" method="POST">
                <br />
                <select name="select" id="select" style="font-size: 50px">
                    <option style="font-size: 50px" value="hospital">Hospital</option>
                    <option style="font-size: 50px" value="BloodBank">Blood Bank</option>
                    <option style="font-size: 50px" value="Donor">Donor</option>
                </select>
                <br /><br />
                <input type="hidden" value="true" name="isSubmited" /> 


                <input
                    style="font-size: 50px; background-color: red"
                    type="submit"
                    value="Delete"
                    />

            </form>
            <%} else if (request.getParameter("isSubmited") != null
                    && request.getParameter("select").equals("hospital")
                    && session.getAttribute("RecordMessageStatusDelete") == null) { %>
            <form action="${pageContext.request.contextPath}/AdminDeletePageController" method="POST">
                <h3>Enter the Hospital Email to Delete </h3>
                <input
                    name="toCheckRecordbyEmailToDelete"
                    type="text"
                    placeholder="Enter hospital email"
                    required
                    />
                <br>
                <br>
                <input type="hidden" value="hospital" name="userType" /> 
                <input
                    style="font-size: 20px; background-color: red"
                    type="submit"
                    value="Delete Now"
                   />
            </form>
            <%} else if (request.getParameter("isSubmited") != null
                    && request.getParameter("select").equals("BloodBank")
                    && session.getAttribute("RecordMessageStatusDelete") == null) {%>

            <form action="${pageContext.request.contextPath}/AdminDeletePageController" method="POST">
                <h3>Enter the Blood Bank Email to Delete </h3>
                <input
                    name="toCheckRecordbyEmailToDelete"
                    type="text"
                    placeholder="Enter Blood Bank email"
                    required
                    />
                <br><br>
                <br>
                <input type="hidden" value="bloodbank" name="userType" /> 
                <input
                    style="font-size: 20px; background-color: red"
                    type="submit"
                    value="Delete Now"
                    />
            </form>   
            <%} else if (request.getParameter("isSubmited") != null
                    && request.getParameter("select").equals("Donor")
                    && session.getAttribute("RecordMessageStatusDelete") == null) {%>
                    
            <form action="${pageContext.request.contextPath}/AdminDeletePageController" method="POST">
                <h3>Enter the Donor Email to Delete </h3>
                <input
                    name="toCheckRecordbyEmailToDelete"
                    type="text"
                    placeholder="Enter donor email"
                    required
                    />
                <br><br>
                <br>
                 <input type="hidden" value="donor" name="userType" /> 
                <input
                    style="font-size: 20px; background-color: red"
                    type="submit"
                    value="Delete Now"
                    />
            </form>       
            <%} else {
                if (session.getAttribute("RecordMessageStatusDelete") != null) {%>
            <p style="color: red"><strong> ${RecordMessageStatusDelete}</strong></p>
            <% }
                session.removeAttribute("RecordMessageStatusDelete");
                }%>

        </div>
    </body>
</html>
