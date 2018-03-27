<!DOCTYPE html>
<html>
   <head>
      <%@include file="../includes/head.jsp" %>
      <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
      <!-- font Awesome -->
      <link href="${pageContext.request.contextPath}/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
      <link href="${pageContext.request.contextPath}/resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
      <link href="${pageContext.request.contextPath}/resources/css/panel.css" rel="stylesheet" type="text/css"/>
      <link href="${pageContext.request.contextPath}/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>
      <!-- end of global css -->    
      <!--page level css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
      <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css">
      <!--end of page level css-->
   </head>
   <body class="skin-josh">
      <%@include file="../includes/header.jsp" %>
      <%@include file="../includes/sidebar.jsp" %>
      <!-- Right side column. Contains the navbar and content of the page -->
      <aside class="right-side">
         <!-- Content Header (Page header) -->
         <section class="content-header">
            <h1>Other Deductions</h1>
            <ol class="breadcrumb">
               <li class="active">
                  <a href="#">
                  <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                  Payroll MS
                  </a>
               </li>
               <li class="active">
                  <a href="#">
                  <i class="livicon" data-name="star-full" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                  Deductions - Other Deductions
                  </a>
               </li>
            </ol>
         </section>
         <!--section ends-->
         <section class="content">
            <div class="row">
               <div class="col-lg-12">
                  <div class="panel panel-plain filterable">
                     <div class="panel-heading clearfix  ">
                        <div class="panel-title pull-left">
                           <div class="caption">
                              <i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                              Other Deductions Table
                           </div>
                        </div>
                        <div class="pull-right">
                           <a class="btn btn-primary" data-toggle="modal" data-href="#editaaaa" href="#editaaaa">
                           <i class="fa fa-wrench"></i>
                           Other Deduction Setup
                           </a>
                        </div>
                     </div>
                     <div class="panel-body">
                        <table class="table table-striped table-responsive" id="table1">
                           <thead>
                              <tr>
                                 <th>Deduction Name</th>
                                 <th>Description</th>
                                 <th>Amount</th>
                                 <th>Action</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>1,000</td>
                                 <td>1,249.99</td>
                                 <td>1,000</td>
                                 <td>
                                    <a class="btn btn-success" data-toggle="modal" data-href="#edit3" href="#edit3">
                                    <span class="glyphicon glyphicon-user"></span>
                                    </a>
                                    <a class="btn btn-primary" data-toggle="modal" data-href="#edit1" href="#edit1">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                    </a>
                                    <a class="btn btn-danger" data-toggle="modal" data-href="#edit2" href="#edit2">
                                    <span class="glyphicon glyphicon-trash"></span>
                                    </a>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Third Basic Table Ends Here-->
            <!--delete modal starts here-->
            <div class="modal fade" id="edit2" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           Delete Record
                        </h4>
                     </div>
                     <div class="modal-body">
                        <div class="row">
                           Are you sure you want to delete?
                        </div>
                     </div>
                     <div class="modal-footer ">
                        <button type="button" class="btn btn-danger">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Delete
                        </button>
                        <button type="button" class="btn btn-plain" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                        Close
                        </button>
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.modal ends here -->
            <div class="modal fade" id="edit3" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           <i class="fa fa-scissors"></i>
                           Deduct to
                        </h4>
                     </div>
                     <div class="modal-body">
                        <div class="row">
                           <form role="form">
                              <div class="col-md-6">
                                 <div class="form-group">
                                    <label>
                                    Department:
                                    </label>
                                    <span class="input-group-btn">
                                       <select id="single-prepend-text" class="form-control select2">
                                          <option value="A">All Departments</option>
                                          <option value="a1">Faculty</option>
                                          <option value="B">Maintenance</option>
                                          <option value="C">Administration</option>
                                          <option value="D">Canteeners</option>
                                       </select>
                                    </span>
                                 </div>
                              </div>
                              <div class="col-md-6">
                                 <div class="form-group">
                                    <label>
                                    Job Title:
                                    </label>
                                    <span class="input-group-btn">
                                       <select id="single-prepend-text" class="form-control select2">
                                          <option value="A">All Job Titles</option>
                                          <option value="A">Professor 1</option>
                                          <option value="B">Professor 2</option>
                                          <option value="C">Instructor 1</option>
                                          <option value="D">Instructor 2</option>
                                       </select>
                                    </span>
                                 </div>
                              </div>
                              <div class="col-md-6">
                                 <div class="form-group">
                                    <label>
                                    Employee:
                                    </label>
                                    <span class="input-group-btn">
                                       <select id="single-prepend-text" class="form-control select2">
                                          <option value="A">All Employees</option>
                                          <option value="A">BECHAYDA, Michael</option>
                                          <option value="B">BALMORES, Shanmy Vence</option>
                                          <option value="C">ARELLANO, Erwin Roy</option>
                                          <option value="D">VILORIA, Edmar</option>
                                          <option value="D">DE OCAMPO, Rafael</option>
                                       </select>
                                    </span>
                                 </div>
                              </div>
                           </form>
                        </div>
                     </div>
                     <div class="modal-footer ">
                        <button type="button" class="btn btn-primary">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Save
                        </button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                        Close
                        </button>
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.modal ends here -->
            <div class="modal fade" id="editaaaa" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           Add New Record
                        </h4>
                     </div>
                     <div class="modal-body">
                        <div class="row">
                           <form role="form">
                              <div class="row">
                                 <div class="col-xs-12 col-sm-4 col-md-4">
                                    <div class="form-group">
                                       <label>Deduction Name</label>
                                       <input type="text" name="Type" id="rtype" class="form-control input-md" placeholder="Input Name" tabindex="1">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-8 col-md-8">
                                    <div class="form-group">
                                       <label>Amount</label>
                                       <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="0.00" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                       <label>Description</label>
                                       <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="Description" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                           </form>
                        </div>
                     </div>
                     <div class="modal-footer ">
                        <button type="button" class="btn btn-primary">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Save
                        </button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                        Close
                        </button>
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.modal ends here -->
            <!--delete modal starts here-->
            <div class="modal fade" id="edit1" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           Edit Record
                        </h4>
                     </div>
                     <div class="modal-body">
                        <div class="row">
                           <form role="form">
                              <div class="row">
                                 <div class="col-xs-12 col-sm-4 col-md-4">
                                    <div class="form-group">
                                       <label>Deduction Name</label>
                                       <input type="text" name="Type" id="rtype" class="form-control input-md" placeholder="Input Name" tabindex="1">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-8 col-md-8">
                                    <div class="form-group">
                                       <label>Amount</label>
                                       <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="0.00" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                       <label>Description</label>
                                       <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="Description" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                           </form>
                        </div>
                     </div>
                     <div class="modal-footer ">
                        <button type="button" class="btn btn-primary">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Save
                        </button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                        Close
                        </button>
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.modal ends here -->
            <!--delete modal starts here-->
            <div class="modal fade" id="edit1" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           Edit Record
                        </h4>
                     </div>
                     <div class="modal-body">
                        <div class="row">
                           <form role="form">
                              <div class="row">
                                 <div class="col-xs-12 col-sm-4 col-md-4">
                                    <div class="form-group">
                                       <label>Deduction Name</label>
                                       <input type="text" name="Type" id="rtype" class="form-control input-md" placeholder="Input Name" tabindex="1">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-8 col-md-8">
                                    <div class="form-group">
                                       <label>Description</label>
                                       <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="Input Description" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Amount</label>
                                       <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="0.00" tabindex="2">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Taxable</label>
                                       <select class="form-control" id="n-columns">
                                          <option value="1">Yes</option>
                                          <option value="2">No</option>
                                       </select>
                                    </div>
                                 </div>
                              </div>
                           </form>
                        </div>
                     </div>
                     <div class="modal-footer ">
                        <button type="button" class="btn btn-primary">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Save
                        </button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                        Close
                        </button>
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.modal ends here -->
         </section>
         <!-- content -->
      </aside>
      <!-- right-side -->
      </div>
      <!-- ./wrapper -->
      <%@include file="../includes/footer.jsp" %>
      <!-- begining of page level js -->
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
       <script>sidebar.syscon();</script>
      <!-- end of page level js -->
      
   </body>
</html>