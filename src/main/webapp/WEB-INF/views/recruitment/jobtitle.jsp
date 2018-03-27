<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Human Resources Management System</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <!-- global css -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="../css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="../css/metisMenu.css" rel="stylesheet" type="text/css"/>
    <!-- end of global css -->
    <!--page level css -->
    <link rel="stylesheet" type="text/css" href="../vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="../css/pages/tables.css" rel="stylesheet" type="text/css" />
    <!-- end of page level css -->
</head>

<body class="skin-josh">
     <%@ include file="../includes/header.jsp" %>	
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <%@include file="../includes/sidebar-admin.jsp" %>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Human Resources Management System</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Human Resources Management System
                        </a>
                    </li>
                </ol>
            </section>
			<section class="content">
                 <div class="row">
				<div class="col-lg-12">
                   <div class="panel panel-primary" id="hidepanel1">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="pin-on" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Job Title
                                </h3>
                                
                            </div>
                                <div class="panel-body">
                                <form class="form-horizontal" action="#" method="post">
                                    <fieldset>
									    <div class="form-group">
                                            <label class="col-md-2 control-label" for="name">Job Title</label>
                                            <div class="col-md-9">
                                            <input id="name" name="name" type="text"  class="form-control"></div>
                                        </div>
										
										<div class="form-group">
                                            <div class="col-md-11 text-right">
                                                <button type="submit" class="btn btn-responsive btn-primary btn-sm">
												<i class=" fa fa-add"></i>Submit</button>
                                            </div>
                                        </div>
									
									</fieldset>
									</form>
									</div>
									</div>
									 <div class="panel panel-primary ">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="livicon" data-name="user" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                               Job Title List
                            </h4>
                        </div>
                        <br />
                        <div class="panel-body">
                            <table class="table table-bordered " id="table">
                                <thead>
                                    <tr class="filters">
                                        <th>ID</th>
										<th>Job Title</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>001</td>
                                        <td>Progaramming 2 Instructor</td> 
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="pen" data-size="20" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="edit"></i>
                                            </a>
											<a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="trash" data-size="20" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									<tr>
                                        <td>002</td>
                                        <td>PE Instructor</td> 
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="pen" data-size="20" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="edit"></i>
                                            </a>
											<a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="trash" data-size="20" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									<tr>
                                        <td>003</td>
                                        <td>DB Administrator</td> 
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="pen" data-size="20" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="edit"></i>
                                            </a>
											<a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="trash" data-size="20" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									<tr>
                                        <td>004</td>
                                        <td>University Security Guard</td> 
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="pen" data-size="20" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="edit"></i>
                                            </a>
											<a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="trash" data-size="20" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									<tr>
                                        <td>005</td>
                                        <td>University Maintenancer Personnel</td> 
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="pen" data-size="20" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="edit"></i>
                                            </a>
											<a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="trash" data-size="20" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									</tbody>
									</table>
									</div>
									</div>
									</div>
									</section>
			</aside>
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
    <script src="../js/metisMenu.js" type="text/javascript"></script>
    <script src="../vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <script type="text/javascript" src="../vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../vendors/datatables/dataTables.bootstrap.js"></script>
    <script>
    $(document).ready(function() {
        $('#table').dataTable();
    });
    </script>
    <!-- end of page level js -->
  
</body>
</html>
