<%-- 
    Document   : AdminEditPage
    Created on : Jan 16, 2022, 1:35:41 AM
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
            <% if (request.getParameter("isSubmited") == null && session.getAttribute("RecordMessage") == null) {%>
            <h2 align="center">Select the record type:</h2>

            <form action="AdminEditPage.jsp" method="POST">
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
                    value="Update"
                    />

            </form>
            <%} else if (request.getParameter("isSubmited") != null
                    && request.getParameter("select").equals("hospital")
                    && session.getAttribute("RecordMessage") == null) { %>
            <form action="${pageContext.request.contextPath}/AdminEditPageController" method="POST">
                <h3>Enter the Hospital Email to Update </h3>
                <input
                    name="toCheckRecordbyEmail"
                    type="text"
                    placeholder="Enter hospital email"
                    required
                    />
                <br><br>
                <br>
                <label><strong>New Hospital Name:</strong></label>
                <input
                    name="newName"
                    type="text"
                    placeholder="Enter hopsital your name"
                    required
                    />
                <label><strong>Hospital Mobile No:</strong></label>
                <input
                    name="phonenumber"
                    type="text"
                    placeholder="Enter hospital mobile number"
                    required
                    />
                <label><strong>Email:</strong></label>
                <input
                    name="email"
                    type="email"
                    placeholder="Enter Email address"
                    required
                    />
                <label><strong>Hospital Address:</strong></label>
                <input
                    name="address"
                    type="text"
                    placeholder="Enter hospital address"
                    required
                    />
                <label><strong>Password:</strong></label>
                <input
                    name="password"
                    type="password"
                    placeholder="Enter Password"
                    required
                    />
                <input type="hidden" value="hospital" name="userType" /> 
                <br>
                <br>
                <br>
                <input
                    style="font-size: 20px; background-color: red"
                    type="submit"
                    value="Update Now"
                    />
            </form>
            <%} else if (request.getParameter("isSubmited") != null
                    && request.getParameter("select").equals("BloodBank")
                    && session.getAttribute("RecordMessage") == null) {%>

            <form action="${pageContext.request.contextPath}/AdminEditPageController" method="POST">
                <h3>Enter the Blood Bank Email to Update </h3>
                <input
                    name="toCheckRecordbyEmail"
                    type="text"
                    placeholder="Enter Blood Bank email"
                    required
                    />
                <br><br>
                <br>
                <label><strong>New Blood Bank Name:</strong></label>
                <input
                    name="newName"
                    type="text"
                    placeholder="Enter Blood bank name"
                    required
                    />
                <label><strong>Blood Group:</strong></label>
                <input name="bloodGroup" type="text" placeholder="Enter blood Group" required>

                <label><strong>Email:</strong></label>
                <input
                    name="email"
                    type="email"
                    placeholder="Enter Email address"
                    required
                    />
                <label><strong>Address:</strong></label>
                <input
                    name="address"
                    type="text"
                    placeholder="Enter Blood bank address"
                    required
                    />
                <label><strong>Password:</strong></label>
                <input
                    name="password"
                    type="password"
                    placeholder="Enter Password"
                    required
                    />
                <input type="hidden" value="bloodBank" name="userType" /> 
                <br>
                <br>
                <br>
                <input
                    style="font-size: 20px; background-color: red"
                    type="submit"
                    value="Update Now"
                    />
            </form>   
            <%} else if (request.getParameter("isSubmited") != null
                    && request.getParameter("select").equals("Donor")
                    && session.getAttribute("RecordMessage") == null) {%>
                    
            <form action="${pageContext.request.contextPath}/AdminEditPageController" method="POST">
                <h3>Enter the Donor Email to Update </h3>
                <input
                    name="toCheckRecordbyEmail"
                    type="text"
                    placeholder="Enter donor email"
                    required
                    />
                <br><br>
                <br>
                <label><strong>Donor Name:</strong></label>
                <input
                    name="newName"
                    type="text"
                    placeholder="Enter your name"
                    required
                    />
                <label><strong>Mobile No:</strong></label>
                <input name="phonenumber" type="text" placeholder="Enter your mobile number"  required>
                <label><strong>New Email:</strong></label>
                <input
                    name="email"
                    type="email"
                    placeholder="Enter the new Email address"
                    required
                    />
                <label><strong>Gender:</strong></label>
                <select name="gender" required>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
                <label><strong>Age:</strong></label>
                <input name="age" type="number" placeholder="Enter your age" required>
                <label><strong>Blood Group: </strong></label>
                <input name="bloodGroup" type="text" placeholder="Enter your blood group" required>
                <br>
                <br>
                <label><strong>Address:</strong></label>
                <input
                    name="address"
                    type="text"
                    placeholder="Enter Blood bank address"
                    required
                    />
                <label><strong>Password:</strong></label>
                <input
                    name="password"
                    type="password"
                    placeholder="Enter Password"
                    required
                    />
                <input type="hidden" value="donor" name="userType" /> 
                <br>
                <br>
                <br>
                <input
                    style="font-size: 20px; background-color: red"
                    type="submit"
                    value="Update Now"
                    />
            </form>       
            <%} else {
                if (session.getAttribute("RecordMessage") != null) {%>
            <p style="color: red"><strong> ${RecordMessage}</strong></p>
            <% }
                session.removeAttribute("RecordMessage");
                }%>

        </div>
    </body>
</html>
