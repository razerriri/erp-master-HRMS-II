<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
   <head>
      <%@include file="includes/head.jsp" %>
   </head>
   <body class="skin-josh">
      <%@include file="includes/header.jsp" %>
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <!-- Left side column. contains the logo and sidebar -->
         <%@include file="includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <!--section starts-->
               <h1>User Management</h1>
               <ol class="breadcrumb">
                  <li>
                     <a href="index">
                     <i class="livicon" data-name="home" data-size="15" data-loop="true"></i>
                     Home
                     </a>
                  </li>
                  <li class="active">User Management</li>
               </ol>
            </section>
            <section class="content paddingleft_right15">
            </section>
         </aside>
         <%@include file="includes/footer.jsp" %>
         <!-- begining of page level js -->
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
         <!-- end of page level js -->
      </div>
   </body>
</html>