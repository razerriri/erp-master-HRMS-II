<!DOCTYPE html>
<html>

<head>

	<%@ include file ="../includes/head.jsp"%>   
    <!--page level css -->
    <link rel="stylesheet" type="text/css" href="../vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="../vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="../vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="../css/pages/tables.css" rel="stylesheet" type="text/css">
    <!--end of page level css-->
    
</head>

<body class="skin-josh">
    
    <header class="header">
    <%@ include file="../includes/header.jsp"%>
    </header>
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
        
        <!-- Left side column. contains the logo and sidebar -->
        <%@ include file="../includes/sidebar.jsp"%>
        <!-- left-side -->
        
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>NEW HIRE ON BOARD</h1>
                <ol class="breadcrumb">
                	<li class="active">
                        <a href="">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Dashboard
                        </a>
                    </li>
                    <li class="active">
                        <a href="">
                            <i class="livicon" data-name="printer" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Report
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
                 <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="users" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    New Hire on Board
                                </div>
                                    
                                </div>
                                <div class="tools pull-right"></div>

                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>New Hire ID</th>
                                            <th>Email Address</th>
                                            <th>Phone Number</th>
                                            <th>Position Title</th>
                                            <th>Appointment Status</th>
                                            <th>Department</th>
                                            <th>Hiring Manager</th>
                                            <th>Date Hired</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Camila Estrabao</td>
                                            <td>NH18CS101</td>
                                            <td>camila@yahoo.com</td>
                                            <td>09786543452</td>
                                            <td>Professor IV</td>
                                            <td>Permanent</td>
                                            <td>Computer Science</td>
                                            <td>Cherry Lopez</td>
                                            <td>January 10, 2018</td>
                                            <td>Completed</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Sarah Fernandez</td>
                                            <td>NH18IT101</td>
                                            <td>sarah@yahoo.com</td>
                                            <td>09435267543</td>
                                            <td>Assistant Professor III</td>
                                            <td>Temporary</td>
                                            <td>Information Technology</td>
                                            <td>Cherry Lopez</td>
                                            <td>January 11, 2018</td>
                                            <td>On-Going</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Anna Gomez</td>
                                            <td>NH18CE101</td>
                                            <td>anna@gmail.com</td>
                                            <td>09825364257</td>
                                            <td>Associate Professor II</td>
                                            <td>Contractual</td>
                                            <td>Computer Engineering</td>
                                            <td>Cherry Lopez</td>
                                            <td>January 18, 2018</td>
                                            <td>Terminated</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Mary Joy Sario</td>
                                            <td>NH18PS101</td>
                                            <td>maryjoy@gmail.com</td>
                                            <td>09647658972</td>
                                            <td>Professor I</td>
                                            <td>Part-Time</td>
                                            <td>Political Science</td>
                                            <td>Cherry Lopez</td>
                                            <td>January 19, 2018</td>
                                            <td>On-Going</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </aside>
        <!-- right-side -->
        
    </div>
    
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- global js -->
    <script src="../js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="../vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="../vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
    <script src="../js/josh.js" type="text/javascript"></script>
    <script src="../js/metisMenu.js" type="text/javascript"> </script>
    <script src="../vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <!-- Back to Top-->
    <script type="text/javascript" src="../vendors/countUp/countUp.js"></script>
    <!-- end of page level js -->
    
    <!-- begining of page level js -->
    <script type="text/javascript" src="../vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="../vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="../vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="../vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="../js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
  
</body>
</html>
