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
            <h1>Withholding Tax</h1>
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
                  Withholding Tax
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
                              Withholding Table
                           </div>
                        </div>
                        <div class="pull-right">
                           <a class="btn btn-primary" data-toggle="modal" data-href="#editaaaa" href="#editaaaa">
                           <i class="fa fa-wrench"></i>
                           Withholding Tax Setup
                           </a>
                        </div>
                     </div>
                     <div class="panel-body">
                        <table class="table table-striped table-responsive" id="table1">
                           <thead>
                              <tr>
                                 <th>Status</th>
                                 <th>Mode</th>
                                 <th>Dependent</th>
                                 <th>Compensation from</th>
                                 <th>Compensation to</th>
                                 <th>Over</th>
                                 <th>Exemption</th>
                                 <th>Action</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>1,000</td>
                                 <td>1,249.99</td>
                                 <td>1,000</td>
                                 <td>36.30</td>
                                 <td>120.00</td>
                                 <td>36.30</td>
                                 <td>120.00</td>
                                 <td>
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
            <!--delete modal starts here-->
            <div class="modal fade" id="editaaaa" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           <i class="fa fa-wrench"></i>
                           Withholding Tax Setup
                        </h4>
                     </div>
                     <div class="modal-body">
                        <div class="row">
                           <form role="form">
                              <div class="row">
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Status</label>
                                       <input type="text" name="Type" id="rtype" class="form-control input-md" placeholder="Status" tabindex="1">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Mode</label>
                                       <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="Mode" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Compensation from</label>
                                       <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="0.00" tabindex="2">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Compensation to</label>
                                       <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="0.00" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Dependent</label>
                                       <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="Dependent" tabindex="2">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Over</label>
                                       <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="0.00" tabindex="2">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Exemption</label>
                                       <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="0.00" tabindex="2">
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
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Status</label>
                                       <input type="text" name="Type" id="rtype" class="form-control input-md" placeholder="Status" tabindex="1">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Mode</label>
                                       <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="Mode" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Compensation from</label>
                                       <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="0.00" tabindex="2">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Compensation to</label>
                                       <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="0.00" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Dependent</label>
                                       <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="Dependent" tabindex="2">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Over</label>
                                       <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="0.00" tabindex="2">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Exemption</label>
                                       <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="0.00" tabindex="2">
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