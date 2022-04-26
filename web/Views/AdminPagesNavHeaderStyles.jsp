<%-- 
    Document   : AdminPagesNavHeaderStyles
    Created on : Jan 16, 2022, 12:26:08 AM
    Author     : Hamzeh Bajbouj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
      .navbar {
        width: 100%;
        background-color: rgb(216, 19, 19);
        overflow: auto;
      }

      .navbar a {
        float: left;
        padding: 12px;
        color: white;
        text-decoration: none;
        font-size: 17px;
      }

      .navbar a:hover {
        background-color: rgb(18, 241, 74);
      }
    
   @media screen and (max-width: 500px) {
        .navbar a {
          float: none;
          display: block;
        }
      }
</style>
    