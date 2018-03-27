<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Payroll</title>
      <%@include file="../includes/head.jsp" %>
      <!--page level css -->
      <link href="${pageContext.request.contextPath}/resources/css/pages/form_layouts.css" rel="stylesheet" type="text/css"/>
      <!--end of page level css-->
      <!--page level css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
      <link href="css/pages/tables.css" rel="stylesheet" type="text/css">
      <!--end of page level css-->
      <!--page level css -->
      <link href="${pageContext.request.contextPath}/resources/css/pages/toastr.css" rel="stylesheet" />
      <link href="${pageContext.request.contextPath}/resources/vendors/toastr/toastr.css" rel="stylesheet" type="text/css" />
      <!--end of page level css-->
   </head>
   <body class="skin-josh">
      <%@include file="../includes/header.jsp" %>
      <%@include file="../includes/sidebar.jsp" %>
      <!-- Right side column. Contains the navbar and content of the page -->
      <aside class="right-side">
		<!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>Contributions</h1>
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
                                <a href="#tab1" data-toggle="tab">GSIS</a>
                            </li>
                            <li>
                                <a href="#tab2" data-toggle="tab">HDMF</a>
                            </li>
                            <li>
                                <a href="#tab3" data-toggle="tab">PhilHealth</a>
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
                                   GSIS Table
                                </div>
                                    
                                </div>
                                <div class="pull-right">
                                    <a class="btn btn-primary" data-toggle="modal" data-href="#editaaaa" href="#editaaaa">
                                    <i class="fa fa-wrench"></i>
                                         GSIS Setup
                                     </a>
                                </div>

                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>

                                            <th>Base Pay</th>
                                            <th>Employee Share</th>
                                            <th>Employer Share</th>
                                            <th>Total Contribution</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>

                                            <td>10,000</td>
                                            <td>900.00</td>
                                            <td>1,200.00</td>
                                            <td>2,100.00</td>
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
                                <button type="button" class="btn btn-primary" class="btn btn-green toastrshow" id="showtoast">
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
        <div id="tab2" class="tab-pane fade">
             <div class="row">
                <!--laman2-->

             <section class="content">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-plain filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                  HDMF Table
                                </div>
                                    
                                </div>
                                <div class="pull-right">
                                    <div class="pull-right">
                                    <a class="btn btn-primary" data-toggle="modal" data-href="#editbbbb" href="#editbbbb">
                                    <i class="fa fa-wrench"></i>
                                         HDMF Setup
                                     </a>
                                </div>
                                </div>

                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table2">
                                    <thead>
                                        <tr>

                                            <th>Base Pay</th>
                                            <th>Employee Share</th>
                                            <th>Employer Share</th>
                                            <th>Total Contribution</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>

                                            <td>10,000</td>
                                            <td>200.00</td>
                                            <td>200.00</td>
                                            <td>400.00</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
               
                
                
                  <!--delete modal starts here-->
                <div class="modal fade" id="editbbbb" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title custom_align" id="Heading">
                                <i class="fa fa-wrench"></i>
                                    HDMF Setup
                                </h4>
                            </div>
                            <div class="modal-body">
                                 <div class="row">
                                        <form role="form">
                                            <div class="row">
                                                 <div class="col-xs-12 col-sm-4 col-md-4">
                                                     <label>Base Pay (and below)</label>
                                                    <div class="form-group input-group">
                                                           <input class="form-control" id="disabledInput" type="text" value="1,500" disabled>
                                                             <span class="input-group-btn">
                                                                <button class="btn btn-default" type="button">
                                                                   <i class="fa fa-pencil"></i>
                                                                </button>
                                                             </span>
                                                   </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4">
                                                     <label>Employee Share</label>
                                                    <div class="form-group input-group">
                                                           <input class="form-control" id="disabledInput" type="text" value="1%" disabled>
                                                             <span class="input-group-btn">
                                                                <button class="btn btn-default" type="button">
                                                                   <i class="fa fa-pencil"></i>
                                                                </button>
                                                             </span>
                                                   </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4">
                                                     <label>Employer Share</label>
                                                    <div class="form-group input-group">
                                                           <input class="form-control" id="disabledInput" type="text" value="2%" disabled>
                                                             <span class="input-group-btn">
                                                                <button class="btn btn-default" type="button">
                                                                   <i class="fa fa-pencil"></i>
                                                                </button>
                                                             </span>
                                                   </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-4 col-md-4">
                                                     <label>Base Pay (above)</label>
                                                    <div class="form-group input-group">
                                                           <input class="form-control" id="disabledInput" type="text" value="1,500" disabled>
                                                             <span class="input-group-btn">
                                                                <button class="btn btn-default" type="button">
                                                                   <i class="fa fa-pencil"></i>
                                                                </button>
                                                             </span>
                                                   </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4">
                                                     <label>Employee Share</label>
                                                    <div class="form-group input-group">
                                                           <input class="form-control" id="disabledInput" type="text" value="2%" disabled>
                                                             <span class="input-group-btn">
                                                                <button class="btn btn-default" type="button">
                                                                   <i class="fa fa-pencil"></i>
                                                                </button>
                                                             </span>
                                                   </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4">
                                                     <label>Employer Share</label>
                                                    <div class="form-group input-group">
                                                           <input class="form-control" id="disabledInput" type="text" value="2%" disabled>
                                                             <span class="input-group-btn">
                                                                <button class="btn btn-default" type="button">
                                                                   <i class="fa fa-pencil"></i>
                                                                </button>
                                                             </span>
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
                                </div>
                                </div>
                            <!-- /.tab2 ends here -->
         <div id="tab3" class="tab-pane fade">
             <div class="row">
                 <div class="col-lg-12">
                    
            <section class="content">
                <div class="row">
                    <div class="col-lg-14">
                        <div class="panel panel-plain filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                   PhilHEALTH Table
                                </div>
                                    
                                </div>
                                <div class="pull-right">
                                    <a class="btn btn-primary" data-toggle="modal" data-href="#editcccc" href="#editcccc">
                                    <i class="fa fa-wrench"></i>
                                         PhilHEALTH Setup
                                     </a>
                                </div>

                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table3">
                                    <thead>
                                        <tr>
                                            <th>Base Pay</th>
                                            <th>Employee Share</th>
                                            <th>Employer Share</th>
                                            <th>Monthly Premium</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>10,000.00</td>
                                             <td>137.50</td>
                                            <td>137.50</td>
                                            <td>275.00</td>
                                            <td>
                                                <a class="btn btn-primary" data-toggle="modal" data-href="#edit5" href="#edit5">
                                                  <span class="glyphicon glyphicon-pencil"></span>
                                                </a>
                                                <a class="btn btn-danger" data-toggle="modal" data-href="#edit6" href="#edit6">
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
                <div class="modal fade" id="edit6" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
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
                <div class="modal fade" id="editcccc" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title custom_align" id="Heading">
                                <i class="fa fa-wrench"></i>
                                    PhilHEALTH Setup
                                </h4>
                            </div>
                            <div class="modal-body">
                                 <div class="row">
                                        <form role="form">
                                            <div class="row">
                                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                                    <div class="form-group input-group">
                                                     <label>Monthly Premium Rate</label> 
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-6">
                                                    <div class="form-group input-group">
                                                           <input class="form-control" id="disabledInput" type="text" value="2.75%" disabled>
                                                             <span class="input-group-btn">
                                                                <button class="btn btn-default" type="button">
                                                                   <i class="fa fa-pencil"></i>
                                                                </button>
                                                             </span>
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
                <div class="modal fade" id="edit5" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
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
                                                         <label>Bracket</label>
                                                        <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="0" tabindex="2"></div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4">
                                                    <div class="form-group">
                                                         <label>Range from</label>
                                                        <input type="text" name="Type" id="rtype" class="form-control input-md" placeholder="0.00" tabindex="1"></div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4">
                                                    <div class="form-group">
                                                         <label>Range to</label>
                                                        <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="0.00" tabindex="2"></div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                                    <label>Employee Share</label>
                                                        <input type="text" name="wrk" id="wrk" class="form-control input-md" placeholder="0.00" tabindex="2">
                                                     </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                                         <label>Employer Share</label>
                                                        <input type="text" name="ot" id="ot" class="form-control input-md" placeholder="0.00" tabindex="2"></div>
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
                                </div>
                            </div>
 
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
      <!-- begining of page level js -->
      <script src="${pageContext.request.contextPath}/resources/vendors/toastr/toastr.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/toastr/ui-toastr.js"></script>
       <script>sidebar.syscon();</script>
      <!-- end of page level js -->
      
   </body>
</html>