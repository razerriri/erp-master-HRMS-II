<!DOCTYPE html>
<html>
   <head>
      <%@include file="../includes/head.jsp" %>
      <!--page level css -->
      <link href="css/pages/form_layouts.css" rel="stylesheet" type="text/css"/>
      <!--end of page level css-->
      <!--page level css -->
      <link rel="stylesheet" type="text/css" href="vendors/datatables/css/dataTables.colReorder.min.css" />
      <link rel="stylesheet" type="text/css" href="vendors/datatables/css/dataTables.scroller.min.css" />
      <link rel="stylesheet" type="text/css" href="vendors/datatables/css/dataTables.bootstrap.css" />
      <link href="css/pages/tables.css" rel="stylesheet" type="text/css">
      <!--end of page level css-->
   </head>
   <body class="skin-josh">
      <%@include file="../includes/header.jsp" %>
      <%@include file="../includes/sidebar.jsp" %>
      <!-- Right side column. Contains the navbar and content of the page -->
      <aside class="right-side">
      <!-- Content Header (Page header) -->
      <section class="content-header">
         <h1>Payroll Reports</h1>
         <ol class="breadcrumb">
            <li class="active">
               <a href="#">
               <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
               Payroll MS
               </a>
            </li>
            <li class="active">
               <a href="#">
               <i class="livicon" data-name="scissors" data-size="16" data-color="#333" data-hovercolor="#333"></i>
               Contributions
               </a>
            </li>
         </ol>
      </section>
      <!--section ends-->
      <section class="content">
         <div class="row">
         <div class="col-lg-16">
         <ul class="nav  nav-tabs ">
            <li class="active">
               <a href="#tab1" data-toggle="tab">Payroll Distribution Report</a>
            </li>
         </ul>
         <div  class="tab-content mar-top">
         <div id="tab1" class="tab-pane active in fade">
         <div class="row">
            <div class="col-lg-12">
               <section class="content">
                  <div class="row">
                     <div class="panel panel-plain filterable">
                        <div class="panel-heading clearfix  ">
                           <div class="panel-title pull-left">
                              <div class="caption">
                                 <i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                 Payroll Distribution Table
                              </div>
                           </div>
                           <div class="tools pull-right">
                           </div>
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-responsive" id="table1">
                              <thead>
                                 <tr>
                                    <th>Employee Name</th>
                                    <th>Marital Status</th>
                                    <th>No. of Children</th>
                                    <th>Base Pay</th>
                                    <th>Regular Taken</th>
                                    <th>Regular Taken(hours)</th>
                                    <th>Overtime:Regular Worked</th>
                                    <th>Overtime:Regular Worked(hours)</th>
                                    <th>Gross Pay</th>
                                    <th>GSIS</th>
                                    <th>Pag-IBIG</th>
                                    <th>PhilHealth</th>
                                    <th>Taxable Income</th>
                                    <th>Allowances</th>
                                    <th>Cash Advance</th>
                                    <th>Tax Payable</th>
                                    <th>Net Pay</th>
                                    <th>13th Month Pay</th>
                                    <th>GSIS</th>
                                    <th>PhilHealth</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>1,000</td>
                                    <td>1,249.99</td>
                                    <td>1,000</td>
                                    <td>36.30</td>
                                    <td>1,000</td>
                                    <td>1,249.99</td>
                                    <td>1,000</td>
                                    <td>36.30</td>
                                    <td>1,000</td>
                                    <td>1,249.99</td>
                                    <td>1,000</td>
                                    <td>36.30</td>
                                    <td>1,000</td>
                                    <td>1,249.99</td>
                                    <td>1,000</td>
                                    <td>36.30</td>
                                    <td>1,000</td>
                                    <td>1,249.99</td>
                                    <td>1,000</td>
                                    <td>36.30</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
                  <!-- Third Basic Table Ends Here-->
                  <!--delete modal starts here-->
                  <div class="modal fade" id="editaaaa" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
                     <div class="modal-dialog">
                        <div class="modal-content">
                           <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                              <h4 class="modal-title custom_align" id="Heading">
                                 <i class="fa fa-wrench"></i>
                                 GSIS Setup
                              </h4>
                           </div>
                           <div class="modal-body">
                              <div class="row">
                                 <form role="form">
                                    <div class="row">
                                 <form role="form">
                                 <div class="row">
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                 <label>Employee Share</label>
                                 <div class="form-group input-group">
                                 <input class="form-control" id="disabledInput" type="text" value="9%" disabled>
                                 <span class="input-group-btn">
                                 <button class="btn btn-default" type="button">
                                 <i class="fa fa-pencil"></i>
                                 </button>
                                 </span>
                                 </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                 <label>Employer Share</label>
                                 <div class="form-group input-group">
                                 <input class="form-control" id="disabledInput" type="text" value="12%" disabled>
                                 <span class="input-group-btn">
                                 <button class="btn btn-default" type="button">
                                 <i class="fa fa-pencil"></i>
                                 </button>
                                 </span>
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
                                 </form>
                                 <!-- /.modal ends here -->
                                 <!--delete modal starts here-->
               </section>
               </div>
               </div>
               </div> 
               <!-- /.tab1 ends here -->
      </section>
      </div>
      </div>
      <!-- /.tab2 ends here -->
      </div>
      </div>
      <%@include file="../includes/footer.jsp" %>
      <!-- begining of page level js -->
      <script type="text/javascript" src="vendors/datatables/jquery.dataTables.min.js"></script>
      <script type="text/javascript" src="vendors/datatables/dataTables.tableTools.min.js"></script>
      <script type="text/javascript" src="vendors/datatables/dataTables.colReorder.min.js"></script>
      <script type="text/javascript" src="vendors/datatables/dataTables.scroller.min.js"></script>
      <script type="text/javascript" src="vendors/datatables/dataTables.bootstrap.js"></script>
      <script type="text/javascript" src="js/pages/table-advanced.js"></script>
      <!-- end of page level js -->
      <script>sidebar.payroll();</script>
   </body>
</html>