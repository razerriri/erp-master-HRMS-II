<!DOCTYPE html>
<html>
   <head>
      <%@include file="../includes/head.jsp" %>
      <!--page level css -->
      <!-- daterange picker -->
      <link href="${pageContext.request.contextPath}/resources/vendors/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
      <!--select css-->
      <link href="${pageContext.request.contextPath}/resources/vendors/select2/select2.css" rel="stylesheet" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/select2/select2-bootstrap.css" />
      <!--clock face css-->
      <link href="${pageContext.request.contextPath}/resources/vendors/iCheck/skins/all.css" rel="stylesheet" />
      <link href="${pageContext.request.contextPath}/resources/css/pages/formelements.css" rel="stylesheet" />
      <!--end of page level css-->
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
            <h1>Payroll</h1>
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
                  Generate Payroll
                  </a>
               </li>
            </ol>
         </section>
         <!--section ends-->
         
         <section class="content">
                <!--main content-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-plain">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="clock" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Generate Payroll
                                </h3>
                            </div>
                            <div class="panel-body">
                                <div class="box-body">
                                    <!-- Date and time range -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Payroll Period:
                                        </label>
                                        <div class="input-group">
                                          
                                            <div class="input-group-addon">
                                                <i class="fa fa-clock-o"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="reservationtime" />
                                        </div>
                                    </div>
                                  </div>
                               </div>

                                  
                              <div class="pull-right">
                               <footer>
                                 <button class="btn btn-primary" type="button" data-select2-open="single-prepend-text"  data-toggle="modal" data-href="#editaaaa" href="#editaaaa"><span class="btn-label">
                                                <i class="glyphicon glyphicon-ok"></i>
                                            </span>
                                            Generate!
                                            </button>
                               </footer> 
                                </div> 
                                  </div>


                                  </div>

                               </div>

                            </div>
                      
                <!--main content ends--> 
            </section>
        
        <section class="content">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-plain filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                   Employee Table
                                </div>
                                    
                                </div>
                               <div class="tools pull-right">
                                </div>


                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                        <th>*</th>
                                        <th>Employee Name</th>
                                        <th>Last Payroll Date</th>
                                        <th>Base Pay</th>
                                        <th>Allowances</th>
                                        <th>Deductions</th>
                                        <th>Gross Pay</th>
                                        <th>Witholding Tax</th>
                                        <th>Net Pay</th>
                                        <th>Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>

                                            <td>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" class="flat-red" checked/>
                                        </label>
                                    </div>
                                            </td>
                                            <td>BECHAYDA, Michael</td>
                                            <td>October 28, 2017</td>
                                            <td>10,000.00</td>
                                            <td>0.00</td>
                                            <td>1,237.50</td>
                                            <td>8,762.50</td>
                                            <td>0.00</td>
                                            <td>8,762.50</td>
                                            <td>
                                                <a class="btn btn-primary" data-toggle="modal" data-href="#edit1" href="#edit1">
                                                  <span class="glyphicon glyphicon-user"></span>
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
                <div class="modal fade" id="editaaaag" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
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
                                    Employee Details
                                </h4>
                            </div>
                            <div class="modal-body">
                                 <div class="row">
                                        <form role="form">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                                    <label>Department</label>
                                                     <input class="form-control" id="disabledInput" type="text" value="Faculty Head" disabled>
                                                    </div>
                                                    </div>
                                                <div class="col-xs-12 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                                    <label>Job Title</label>
                                                     <input class="form-control" id="disabledInput" type="text" value="Professor 1" disabled>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                            <div class="col-xs-12 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                                    <label>No. of Dependent</label>
                                                     <input class="form-control" id="disabledInput" type="text" value="3" disabled>
                                                    </div>
                                                </div>
                                               
                                                <div class="col-xs-12 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                                    <label>Last Payroll Date</label>
                                                     <input class="form-control" id="disabledInput" type="text" value="092748364" disabled>
                                                    </div>
                                                </div>
                                            </div>



                                            
                                        </form>
                                    </div>
                               </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal ends here -->
            </section>
      </aside>
      <!-- right-side --> 
      </div>
      <%@include file="../includes/footer.jsp" %>
      <!-- begining of page level js -->
      <!-- InputMask -->
      <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
      <!-- date-range-picker -->
      <script src="${pageContext.request.contextPath}/resources/vendors/daterangepicker/daterangepicker.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/iCheck/icheck.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/iCheck/demo/js/custom.min.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/autogrow/js/jQuery-autogrow.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/card/jquery.card.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
      <!-- end of page level js -->
      <!-- begining of page level js -->
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
      <!-- end of page level js -->
      <script>sidebar.payroll();</script>
   </body>
</html>