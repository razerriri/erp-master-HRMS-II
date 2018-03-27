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
                     <i class="livicon" data-name="home" data-size="15" data-loop="true"></i>
                     Home
                     </a>
                  </li>
                  <li>
                     <a href="">
                     <i class="livicon" data-name="home" data-size="15" data-loop="true"></i>
                     System Setup
                     </a>
                  </li>
                  <li class="active">Salary Type</li>
               </ol>
            </section>
            <section class="content paddingleft_right15">
               <div class="row">
                  <div class="col-lg-15">
                     <div class="panel panel-success filterable">
                        <div class="panel-heading clearfix  ">
                           <div class="panel-title pull-left">
                              <div class="caption">
                                 <i class="livicon" data-name="thumbnails-big" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                 Salary Type
                              </div>
                           </div>
                           <div>
                              <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Salary Type</a></div>
                           </div>
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-responsive" id="table1">
                              <thead>
                                 <tr>
                                    <th>Salary Type Name</th>
                                    <th>Salary Type Code</th>
                                    <th>Units per year</th>
                                    <th></th>
                                    <th></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:forEach var="st" items="${list }">
                                    <tr>
                                       <td>${st.salaryTypeName }</td>
                                       <td>${st.salaryTypeCode }</td>
                                       <td>${st.unitsPerYear }</td>
                                       <td><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modalupdate" salary-type-id="${st.salaryTypeId }" salary-type-name="${st.salaryTypeName }" salary-type-code="${st.salaryTypeCode }" units-per-year="${st.unitsPerYear }"><span class="glyphicon glyphicon-pencil"></span> </a></td>
                                       <td> <a href="#" class="btn btn-danger" onclick="confirmDelete(${st.salaryTypeId})"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                    </tr>
                                 </c:forEach>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
                  <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                     <div class="modal-dialog">
                        <div class="modal-content">
                           <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h4 class="modal-title" id="myModalLabel">
                                 <i class="fa fa-plus"></i>
                                 Salary Type
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" method="POST" action="save/" modelAttribute="salaryType">
                                 <fieldset>
                                    <!-- Form Name -->
                                    <legend>Add Salary Type</legend>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Salary Type</label>  
                                       <div class="col-md-6">
                                          <form:input path="salaryTypeName" id="salarytypename" name="salarytypename" type="text" placeholder="Salary Type Name" class="form-control input-md" required=""/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Salary Code</label>  
                                       <div class="col-md-6">
                                          <form:input path="salaryTypeCode" id="salarytypecode" name="salarytypecode" type="text" placeholder="Salary Type Code" class="form-control input-md" required=""/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="numberinput">Units Per Year</label>  
                                       <div class="col-md-2">
                                          <form:input path="unitsPerYear" id="salaryunits" name="salaryunits" type="text" placeholder="" class="form-control input-md"/>
                                       </div>
                                    </div>
                                    <!-- Button (Double) -->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                       <div class="col-md-8">
                                          <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
                                       </div>
                                    </div>
                                 </fieldset>
                              </form:form>
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                              Close
                              <i class="fa fa-times"></i>
                              </button>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                     <div class="modal-dialog">
                        <div class="modal-content">
                           <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h4 class="modal-title" id="myModalLabel">
                                 <i class="fa fa-plus"></i>
                                 Salary Type
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" action="edit/" method="post" id="updateForm" modelAttribute="salaryType">
                                 <fieldset>
                                    <form:hidden path="salaryTypeId" id="salarytypeid"/>
                                    <!-- Form Name -->
                                    <legend>Update Salary Type</legend>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Salary Type</label>
                                       <div class="col-md-6">
                                          <form:input path="salaryTypeName" id="salarytypename" name="salarytypename" type="text" placeholder="Salary Type" class="form-control input-md" required=""/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Salary Code</label>  
                                       <div class="col-md-6">
                                          <form:input path="salaryTypeCode" id="salarytypecode" name="salarytypecode" type="text" placeholder="Salary Type Code" class="form-control input-md" required=""/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="numberinput">Units Per Year</label>  
                                       <div class="col-md-2">
                                          <form:input path="unitsPerYear" id="salaryunits" name="salaryunits" type="text" placeholder="" class="form-control input-md"/>
                                       </div>
                                    </div>
                                    <!-- Button (Double) -->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                       <div class="col-md-8">
                                          <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
                                       </div>
                                    </div>
                                 </fieldset>
                              </form:form>
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                              Close
                              <i class="fa fa-times"></i>
                              </button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!--/row-->
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
         <!-- end of page level js -->
         <script>
            $('#modalupdate').on('show.bs.modal', function (e) {
            	  // get information to update quickly to modal view as loading begins
            	  var opener=e.relatedTarget;//this holds the element who called the modal
            	   
            	  //we get details from attributes
            	  var salaryname=$(opener).attr('salary-type-name');
            	  var salarycode=$(opener).attr('salary-type-code');
            	  var salaryunits=$(opener).attr('units-per-year');
            	  var salaryid=$(opener).attr('salary-type-id');
            	  
            
            	  //set what we got to our form
              $('#updateForm').find('[id="salarytypename"]').val(salaryname);
            $('#updateForm').find('[id="salarytypecode"]').val(salarycode);
              	  $('#updateForm').find('[id="salaryunits"]').val(salaryunits);
              	  $('#updateForm').find('[id="salarytypeid"]').val(salaryid);
            	});
            
            function confirmDelete(x){
            if(confirm("Are you sure you want to delete this salary type?") == true){
            window.location.href = 'delete/'+x;
            }
            else{
            
            }
            }
         </script>
          <script>sidebar.syscon();</script>
         
      </div>
   </body>
</html>