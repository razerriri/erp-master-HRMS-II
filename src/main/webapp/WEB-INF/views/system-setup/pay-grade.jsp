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
                  <li class="active">Pay grade</li>
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
                                 Pay Grade
                              </div>
                           </div>
                           <div>
                              <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Pay Grade</a></div>
                           </div>
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-responsive" id="table1">
                              <thead>
                                 <tr>
                                    <th>Pay Grade Name</th>
                                    <th>Minimum</th>
                                    <th>Maximum</th>
                                    <th></th>
                                    <th></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:forEach var="pg" items="${list }">
                                    <tr>
                                       <td>${pg.payGradeName }</td>
                                       <td>${pg.payGradeMinimum }</td>
                                       <td>${pg.payGradeMaximum }</td>
                                       <td><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modalupdate" paygrade-id="${pg.payGradeId }" paygrade-name="${pg.payGradeName}" paygrade-minimum="${pg.payGradeMinimum }" paygrade-maximum="${pg.payGradeMaximum }"><span class="glyphicon glyphicon-pencil"></span> </a></td>
                                       <td><a href="#" class="btn btn-danger" onclick="confirmDelete(${pg.payGradeId})"><span class="glyphicon glyphicon-trash"></span></a></td>
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
                                 Pay Grade
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" method="post" action="save/" modelAttribute="payGrade">
                                 <fieldset>
                                    <!-- Form Name -->
                                    <legend>Add Pay Grade</legend>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Pay Grade Name</label>  
                                       <div class="col-md-6">
                                          <form:input path="payGradeName" id="paygrade" name="paygrade" type="text" placeholder="Pay Grade" class="form-control input-md" required=""/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="numberinput">Pay Grade Minimum</label>  
                                       <div class="col-md-2">
                                          <form:input path="payGradeMinimum" id="paygradevalue" name="paygradevalue" type="text" placeholder="" class="form-control input-md"/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="numberinput">Pay Grade Maximum</label>  
                                       <div class="col-md-2">
                                          <form:input path="payGradeMaximum" id="paygradevalue" name="paygradevalue" type="text" placeholder="" class="form-control input-md"/>
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
                                 Pay Grade
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" method="post" action="edit/" modelAttribute="payGrade" id="updateForm">
                                 <fieldset>
                                    <form:hidden path="payGradeId" id="paygradeid"/>
                                    <!-- Form Name -->
                                    <legend>Update Pay Grade</legend>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Pay Grade</label>  
                                       <div class="col-md-6">
                                          <form:input path="payGradeName" id="paygrade" name="paygrade" type="text" placeholder="Salary Type" class="form-control input-md" required=""/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="numberinput">Pay Grade Minimum</label>  
                                       <div class="col-md-2">
                                          <form:input path="payGradeMinimum" id="paygrademinimum" name="paygradevalue" type="text" placeholder="" class="form-control input-md"/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="numberinput">Pay Grade Maximum</label>  
                                       <div class="col-md-2">
                                          <form:input path="payGradeMaximum" id="paygrademaximum" name="paygradevalue" type="text" placeholder="" class="form-control input-md"/>
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
            function confirmDelete(x){
            	if(confirm("Are you sure you want to delete this pay grade?") == true){
            		window.location = 'delete/'+x;
            	}
            	else{
            		
            	}
            }
            
            $('#modalupdate').on('show.bs.modal', function (e) {
             	  // get information to update quickly to modal view as loading begins
             	  var opener=e.relatedTarget;//this holds the element who called the modal
             	   
             	  //we get details from attributes
             	  var paygradeid=$(opener).attr('paygrade-id');
             	  var paygrade=$(opener).attr('paygrade-name');
             	  var paygrademinimum=$(opener).attr('paygrade-minimum');
             	  var paygrademaximum=$(opener).attr('paygrade-maximum');
            
             	  //set what we got to our form
            	  $('#updateForm').find('[id="paygradeid"]').val(paygradeid);
                 $('#updateForm').find('[id="paygrade"]').val(paygrade);
                 $('#updateForm').find('[id="paygrademinimum"]').val(paygrademinimum);
                 $('#updateForm').find('[id="paygrademaximum"]').val(paygrademaximum);
               
             	});
         </script>
          <script>sidebar.syscon();</script>
         
      </div>
   </body>
</html>