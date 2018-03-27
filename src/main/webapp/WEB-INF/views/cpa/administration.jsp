<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
   <head>
      <%@include file="../includes/head.jsp" %>
   </head>
   <body class="skin-josh">
      <%@include file="../includes/header.jsp" %>
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <!-- Left side column. contains the logo and sidebar -->
         <%@include file="../includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <!--section starts-->
               <h1>Compensation Planning And Administration</h1>
               <ol class="breadcrumb">
                  <li>
                     <a href="index">
                     <i class="livicon" data-name="home" data-size="15" data-loop="true"></i> Home
                     </a>
                  </li>
                  <li class="active">Administration</li>
               </ol>
            </section>
            <!-- Main content -->
            <section class="content-header">
               <div class="row">
                  <div class="col-lg-15">
                     <div class="panel panel-primary filterable">
                        <div class="panel-heading clearfix  ">
                           <div class="panel-title pull-left">
                              <div class="caption">
                                 <i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i> Compensation
                              </div>
                           </div>
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-responsive" id="table1">
                              <thead>
                                 <tr class="filters">
                                    <th>Employee Number</th>
                                    <th>Employee Name</th>
                                    <th>Job Title</th>
                                    <th>Department</th>
                                    <th>Hire date</th>
                                    <th>Pay Grade</th>
                                    <th>Overall Performance Rating</th>
                                    <th></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>2012-00312</td>
                                    <td>John Doe</td>
                                    <td>Senior Floor Manager</td>
                                    <td>Maintenance</td>
                                    <td>10/20/2012</td>
                                    <td>13</td>
                                    <td>4- Good</td>
                                    <td>
                                       <a href="#" class="btn btn-success">
                                       <span class="glyphicon glyphicon-user"></span> Details
                                       </a>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>2012-00312</td>
                                    <td>John Doe</td>
                                    <td>Senior Floor Manager</td>
                                    <td>Maintenance</td>
                                    <td>10/20/2012</td>
                                    <td>13</td>
                                    <td>4- Good</td>
                                    <td>
                                       <a href="#" class="btn btn-success">
                                       <span class="glyphicon glyphicon-user"></span> Details
                                       </a>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
               <!--/row-->
               <div class="modal fade" id="modalpromote" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                           <h4 class="modal-title" id="myModalLabel">
                              <i class="fa fa-plus"></i> Employee Details
                           </h4>
                        </div>
                        <div class="modal-body">
                           <strong>Promote Employee</strong>
                           <br>
                           <br>
                           <img src="img/escobs.jpg">
                           </image>
                           <br>
                           <br> Name : Pablo Escobar
                           <br>
                           <br> Hire Date: 10/2/1997
                           <br>
                           <br> Department: Faculty- SHS
                           <br>
                           <br> Current Job Description: Professor
                           <br>
                           <br>
                           <br>
                           <div class="form-group">
                              <label>Target Department:</label>
                              <select class="form-control">
                                 <option>Administrative</option>
                                 <option>Research</option>
                                 <option>Logistics</option>
                                 <option>Finance</option>
                              </select>
                           </div>
                           <label>Target Job Description: </label>
                           <select class="form-control">
                              <option>-</option>
                              <option>Senior Floor Manager</option>
                              <option>Senior Professor</option>
                              <option>Emperor</option>
                              <option>Payroll Master</option>
                           </select>
                        </div>
                        <div class="input-group-btn">
                           submit
                        </div>
                        <!-- /btn-group -->
                        <!-- /input-group -->
                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-danger pull-right" data-dismiss="modal">
                        Close
                        <i class="fa fa-times"></i>
                        </button>
                     </div>
                  </div>
               </div>
            </section>
         </aside>
         <%@include file="../includes/footer.jsp" %>
         <!-- begining of page level js -->
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
         <script>sidebar.cpat();</script>
         <!-- end of page level js -->
      </div>
   </body>
</html>