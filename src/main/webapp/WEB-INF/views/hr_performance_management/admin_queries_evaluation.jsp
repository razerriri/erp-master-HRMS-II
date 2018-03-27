<!DOCTYPE html>
<html>
<head>
    <%@include file="../includes/head.jsp" %>
	<title>User Management</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/icon-logo.png" type="image/x-icon">
    <!-- global css -->
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

</head>
<body class="skin-josh">

  <%@include file="../includes/header.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

  <%@include file="../includes/sidebar.jsp" %>
 
         <!-- Right side column. Contains the navbar and content of the page -->

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Manage Evaluation</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="livicon" data-name="home" data-size="18" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="#">DataTables</a>
                    </li>
                    <li class="active">Advanced Datatables</li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-success filterable" style="overflow:auto;">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                     <i class="livicon" data-name="responsive" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Evaluated
                                </h3>
                            </div>
                            <div class="panel-body">

        <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        
                       <thead>                                        <tr>

                                          	<th>#</th>
                                            <th>Name</th>
                                            <th>Job Title</th>
                                            <th>Department</th> 
                                            <th>Grade</th>
                                        </tr>
                                    </thead>


      <tbody>
                                        <tr>
                                         <td>1.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">Mariela Aquino</a></td>
                                            <td>Software Engineer</td>
                                            <td>
                                                IT
                                            </td>
                                            <td>4.60</td>
                                        </tr>
                                        <tr>
                                            <td>2.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">Andrei Catapang</a></td>
                                            <td>Database Administrator</td>
                                            <td>
                                                IT
                                            </td>
                                            <td>4.44</td>
                                        </tr>
                                        <tr>
                                            <td>3.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">Red Ketchum</a>
                                            </td>
                                            <td>Junior Admin</td>
                                            <td>
                                                Human Resource
                                            </td>
                                            <td>4.2</td>
                                        </tr>
                                        <tr>
                                            <td>4.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">May Squirtle</a></td>
                                            <td>IT Support</td>
                                            <td>
                                                IT
                                            </td>
                                            <td>4.0</td>
                                        </tr>
                                        <tr>
                                            <td>5.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">Goku Son</a></td>
                                            <td>Junior Architect</td>
                                            <td>
                                                Architecture
                                            </td>
                                            <td>3.7</td>
                                        </tr>
                                        
                                    </tbody>

                                    </table>
                                


                        </div>
                        </div>
                    </div>
                </div>

                
                <!-- row-->
                <!-- row-->

                <!-- /.modal ends here -->
            </section>
            <!-- content -->
        </aside>
        <!-- right-side -->


                </div>
            <!-- content -->
        
        
        
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    
    <script>
    function confirmDelete(){
			if(confirm("Are you sure you want to delete this User?") == true){
				document.forms["deleteusers"].submit();

			}
			else{
				
			}
		}
    </script>

    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
   <script src="${pageContext.request.contextPath}/resources/js/josh.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/metisMenu.js" type="text/javascript"> </script>
    <script src="${pageContext.request.contextPath}/resources/vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>


    
    <!-- global js -->
    
</body>
</html>