<%-- 
    Document   : AdminPagesNavHeader
    Created on : Jan 16, 2022, 12:23:46 AM
    Author     : Hamzeh Bajbouj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <div class="navbar">
      <a class="#" href="${pageContext.request.contextPath}/AdminPanelController"><i class="fa fa-fw fa-eye"></i> View</a>
      <a class="#" href="${pageContext.request.contextPath}/Views/AdminEditPage.jsp"><i class="fa fa-fw fa-edit"></i> Edit</a>
      <a class="#" href="${pageContext.request.contextPath}/Views/AdminDeletePage.jsp"><i class="fa fa-fw fa-trash"></i> Delete</a>
    </div>