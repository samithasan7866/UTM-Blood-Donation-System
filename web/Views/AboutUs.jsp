<%-- 
    Document   : AboutUs
    Created on : Jan 3, 2022, 4:22:23 PM
    Author     : Hamzeh Bajbouj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
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
    <style>
      body {
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;
         background-color: #FAFAFA;
      }

      html {
        box-sizing: border-box;
      }

      *,
      *:before,
      *:after {
        box-sizing: inherit;
      }

      .column {
        float: left;
        width: 33.3%;
        margin-bottom: 16px;
        padding: 0 8px;
      }

      .card {
        box-shadow: 5px 8px 20px 5px rgba(240, 5, 5, 0.2);
        margin: 8px;
      }

      .about-section {
        padding: 50px;
        text-align: center;
        background-color: #8f8f8f;
        color: white;
      }

      .container {
        padding: 0 16px;
      }

      .container::after,
      .row::after {
        content: "";
        clear: both;
        display: table;
      }

      .title {
        color: rgb(9, 10, 10);
      }

      .button {
        border: none;
        outline: 0;
        display: inline-block;
        padding: 8px;
        color: white;
        background-color: rgb(201, 8, 8);
        text-align: center;
        cursor: pointer;
        width: 100%;
      }

      .button:hover {
        background-color: rgba(12, 199, 59, 0.637);
      }

      @media screen and (max-width: 650px) {
        .column {
          width: 100%;
          display: block;
        }
      }
      .container {
        position: center;
        margin: 5px;
      }
      .footer {
        background-color: #0a0a0a;
        color: white;
        text-align: center;
        position: bottom;
      }
    </style>
  </head>
  <body>
         <%@include file="PagesHeaders.jsp" %>
    <div class="about-section">
      <h1>About Us Page</h1>
      <p>
        UTM Blood Bank is digital blood bank system which main aim is to
        encourage students in blood Donation.
      </p>
      <p>
        The system is made for collaboration with the local hospitals and blood
        bank through UTM tag line.
      </p>
    </div>

    <h2 style="text-align: center">Our Group</h2>
    <div class="row">
      <div class="column">
        <div class="card" align="center">
          <!-- <img src="" alt="Amit" style="width: 100%" /> -->
          <div class="container">
            <h2>Amit Hasan Sadhin</h2>
            <p class="title">Team member</p>
            <p>
              A 3rd year software Engineering Student at the University of
              Technology Malaysia
            </p>
            <p>samithasan7866@gmail.com</p>
            <p>
              <a href="mailto:samithasan7866@gmail.com"
                ><button class="button">Contact</button></a
              >
            </p>
          </div>
        </div>
      </div>

      <div class="column">
        <div class="card" align="center">
          <!-- <img src="" alt="Abu" style="width: 100%" /> -->
          <div class="container">
            <h2>Abu Sayed Khudri Roman</h2>
            <p class="title">Team member</p>
            <p>
              A 3rd year software Engineering Student at the University of
              Technology Malaysia
            </p>
            <p>aburoman12@gmail.com</p>
            <p>
              <a href="mailto:aburoman12@gmail.com"
                ><button class="button">Contact</button></a
              >
            </p>
          </div>
        </div>
      </div>

      <div class="column">
        <div class="card" align="center">
          <!-- <img src="" alt="Naveed" style="width: 100%" /> -->
          <div class="container">
            <h2>Mostafa Musab Naveed</h2>
            <p class="title">Team member</p>
            <p>
              A 3rd year software Engineering Student at the University of
              Technology Malaysia
            </p>
            <p>mustafanaveed12@gmail.com</p>
            <p>
              <a href="mailto:mustafanaveed12@gmail.com"
                ><button class="button">Contact</button></a
              >
            </p>
          </div>
        </div>
      </div>
      <div class="column">
        <div class="card" align="center">
          <!-- <img src="" alt="Hamzeh" style="width: 100%" /> -->
          <div class="container">
            <h2>Hamzeh Wahed Bajbouj</h2>
            <p class="title">Team member</p>
            <p>
              A 3rd year software Engineering Student at the University of
              Technology Malaysia
            </p>
            <p>hamzehBajbouj56@gmail.com</p>
            <p>
              <a href="mailto:hamzehBajbouj56@gmail.com"
                ><button class="button">Contact</button></a
              >
            </p>
          </div>
        </div>
      </div>
      <div class="column">
        <div class="card" align="center">
          <!-- <img src=" " alt="Rasel" style="width: 100%" /> -->
          <div class="container">
            <h2>Md Roknuzzaman Rasel</h2>
            <p class="title">Team member</p>
            <p>
              A 2rd year software Engineering Student at the University of
              Technology Malaysia
            </p>
            <p>mdrasel34@gmail.com</p>
            <p>
              <a href="mailto:mdrasel34@gmail.com"
                ><button class="button">Contact</button></a
              >
            </p>
          </div>
        </div>
      </div>
    </div>
    <div class="footer">
      <p>
        Copyright ©2022 <b style="color: #e91010">TAKE-FIVE</b> All rights
        reserved
      </p>
      <p>
        The website is created with the help of online free resources and to
        fulfil the project requirements, which is given by UTM.<br />
        The source code of this website is free for any educational use
        only.Please ask for permission to the authors mentioned above.<br />
        By <br />
        <b style="color: #e91010">TAKE-FIVE</b>
      </p>
    </div>
  </body>
</html>

