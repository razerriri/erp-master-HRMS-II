<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <%@include file="../includes/head.jsp" %>
      <!--page level css -->
      <link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
      <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/only_dashboard.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/jscharts.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
      <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css">
      <!--end of page level css-->
   </head>
   <body class="skin-josh">
      <%@include file="../includes/header.jsp" %>	
      <!--MENU PER SYSTEM MODULE-->
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <!-- Left side column. contains the logo and sidebar -->
         <%@include file="../includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <!--section starts-->
               <h1>Department</h1>
               <ol class="breadcrumb">
                  <li>
                     <a href="/erp/">
                     <i class="livicon" data-name="home" data-size="15" data-loop="true"></i>
                     Home
                     </a>
                  </li>
                  <li>
                     <a href="">System Setup</a>
                  </li>
                  <li class="active">Department</li>
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
                                 Departments
                              </div>
                           </div>
                           <div>
                              <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Department</a></div>
                           </div>
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-responsive" id="table1">
                              <thead>
                                 <tr>
                                    <th>Department</th>
                                    <th>Description</th>
                                    <th></th>
                                    <th></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:forEach var="d" items="${list }">
                                    <tr>
                                       <td>${d.deptName }</td>
                                       <td>${d.deptDesc }</td>
                                       <td><a href="#" class="btn btn-default" data-toggle="modal" dept-name="${d.deptName} " dept-desc="${d.deptDesc}" dept-id="${d.deptId}" data-target="#modalupdate"><span class="glyphicon glyphicon-pencil"></span> </a></td>
                                       <td> <a href="#" class="btn btn-danger" onclick="confirmDelete(${d.deptId})"><span class="glyphicon glyphicon-trash"></span> </a></td>
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
                                 Department Details
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" method="post" action="save" modelAttribute="dept">
                                 <fieldset>
                                    <!-- Form Name -->
                                    <legend>Add Department</legend>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Department Name</label>  
                                       <div class="col-md-6">
                                          <form:input path="deptName" id="deptname" name="deptname" type="text" placeholder="Department Name" class="form-control input-md" required="" />
                                       </div>
                                    </div>
                                    <!-- Textarea -->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptdesc">Description</label>
                                       <div class="col-md-4">
                                          <form:textarea path="deptDesc" class="form-control" id="deptdesc" name="deptdesc"></form:textarea>
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
                                 Department Details
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" method="post" action="edit" modelAttribute="dept" id="updateForm">
                                 <fieldset>
                                    <form:hidden path="deptId" id="deptid"></form:hidden>
                                    <!-- Form Name -->
                                    <legend>Update Department Details</legend>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Department Name</label>  
                                       <div class="col-md-6">
                                          <form:input path="deptName" id="deptname" name="deptname" type="text" placeholder="Department Name" class="form-control input-md" required=""/>
                                       </div>
                                    </div>
                                    <!-- Textarea -->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptdesc">Description</label>
                                       <div class="col-md-4">
                                          <form:textarea path="deptDesc" class="form-control" id="deptdesc" name="deptdesc"></form:textarea>
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
      </div>
      <%@include file="../includes/footer.jsp" %>
      <!-- beginning of page level js -->
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
      <!-- end of page level js -->
      <script>
         function confirmDelete(x){
         	if(confirm("Are you sure you want to delete this department?") == true){
         		window.location = 'delete/'+x;
         	}
         	else{
         		
         	}
         }
         
         $('#modalupdate').on('show.bs.modal', function (e) {
          	  // get information to update quickly to modal view as loading begins
          	  var opener=e.relatedTarget;//this holds the element who called the modal
          	   
          	  //we get details from attributes
          	  var deptname=$(opener).attr('dept-name');
          	  var deptdesc=$(opener).attr('dept-desc');
          	  var deptid=$(opener).attr('dept-id');
         
          	  //set what we got to our form
         	  $('#updateForm').find('[id="deptname"]').val(deptname);
              $('#updateForm').find('[id="deptdesc"]').val(deptdesc);
              $('#updateForm').find('[id="deptid"]').val(deptid);
            	
          	});
      </script>
       <script>sidebar.syscon();</script>
   </body>
</html>