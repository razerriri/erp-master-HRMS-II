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
               <h1>Compensation Types</h1>
               <ol class="breadcrumb">
                  <li>
                     <a href="index">
                     <i class="livicon" data-name="home" data-size="15" data-loop="true"></i>
                     Home
                     </a>
                  </li>
                  <li>
                     <a href="">System Setup</a>
                  </li>
                  <li class="active">Compensation Types</li>
               </ol>
            </section>
            <section class="content paddingleft_right15">
               <div class="row">
                  <div class="col-lg-15">
                     <div class="panel panel-success filterable">
                        <div class="panel-heading clearfix  ">
                           <div class="panel-title pull-left">
                              <div class="caption">
                                 <i class="livicon" data-name="thumbnails-big" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i> Compensation Type
                              </div>
                           </div>
                           <div>
                              <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Compensation Type</a></div>
                           </div>
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-responsive" id="table1">
                              <thead>
                                 <tr>
                                    <th>Compensation Type Name</th>
                                    <th>Description</th>
                                    <th>Value</th>
                                    <th></th>
                                    <th></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:forEach var="c" items="${list }">
                                    <tr>
                                       <td>${c.compTypeName }</td>
                                       <td>${c.compTypeDesc }</td>
                                       <td>${c.compValue }</td>
                                       <td><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modalupdate" comp-name="${c.compTypeName}" comp-desc="${c.compTypeDesc }" comp-value="${c.compValue }" comp-id="${c.compTypeId }"><span class="glyphicon glyphicon-pencil"></span> </a></td>
                                       <td> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash" onclick="confirmDelete(${c.compTypeId})"></span> </a></td>
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
                                 <i class="fa fa-plus"></i> Compensation Types
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" method="post" action="save/" modelAttribute="compType">
                                 <fieldset>
                                    <!-- Form Name -->
                                    <legend>Add Compensation</legend>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Compensation type Name</label>
                                       <div class="col-md-6">
                                          <form:input id="deptname" name="deptname" type="text" placeholder="Compensation Type" class="form-control input-md" required="" path="compTypeName" />
                                       </div>
                                    </div>
                                    <!-- Textarea -->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptdesc">Description</label>
                                       <div class="col-md-4">
                                          <form:textarea class="form-control" id="deptdesc" name="deptdesc" path="compTypeDesc" />
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Value</label>
                                       <div class="col-md-6">
                                          <form:input id="cval" name="cval" type="text" placeholder="Value" class="form-control input-md" required="" path="compValue" />
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
                              <button type="button" class="btn btn-danger pull-right" data-dismiss="modal">
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
                                 <i class="fa fa-plus"></i> Compensation Type Details
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" id="updateForm" method="post" action="edit/" modelAttribute="compType">
                                 <fieldset>
                                    <!-- Form Name -->
                                    <legend>Update Compensation Type</legend>
                                    <form:hidden path="compTypeId" id="compid"></form:hidden>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Compensation Type Name</label>
                                       <div class="col-md-6">
                                          <form:input path="compTypeName" id="compname" type="text" placeholder="Compensation Type" class="form-control input-md" required="" />
                                       </div>
                                    </div>
                                    <!-- Textarea -->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptdesc">Description</label>
                                       <div class="col-md-6">
                                          <form:textarea path="compTypeDesc" placeholder="Description" class="form-control" id="compdesc" cols="10" rows="12"></form:textarea>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptdesc">Value</label>
                                       <div class="col-md-4">
                                          <form:textarea path="compValue" class="form-control" id="compvalue"></form:textarea>
                                       </div>
                                    </div>
                                    <!-- Button (Double) -->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                       <div class="col-md-8">
                                          <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Update</button>
                                       </div>
                                    </div>
                                 </fieldset>
                              </form:form>
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-danger pull-right" data-dismiss="modal">
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
         <script>
            $('#modalupdate').on('show.bs.modal', function (e) {
            	  // get information to update quickly to modal view as loading begins
            	  var opener=e.relatedTarget;//this holds the element who called the modal
            	   
            	  //we get details from attributes
            	  var compname=$(opener).attr('comp-name');
            	  var compdesc=$(opener).attr('comp-desc');
            	  var compvalue=$(opener).attr('comp-value');
            	  var compid=$(opener).attr('comp-id');
            
            	  //set what we got to our form
              $('#updateForm').find('[id="compname"]').val(compname);
              	  $('#updateForm').find('[id="compdesc"]').val(compdesc);
              	  $('#updateForm').find('[id="compvalue"]').val(compvalue);
              	$('#updateForm').find('[id="compid"]').val(compid);
            	});
            
            function confirmDelete(x){
            if(confirm("Are you sure you want to delete this compensation type?") == true){
            window.location.href = 'delete/'+x;
            }
            else{
            
            }
            }
         </script>
         <script>sidebar.syscon();</script>
         <!-- end of page level js -->
         
         
      </div>
   </body>
</html>