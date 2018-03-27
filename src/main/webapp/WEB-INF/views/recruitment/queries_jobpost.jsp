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
                    <div class="col-md-12">
                        <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="panel panel-primary ">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="livicon" data-name="user" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                Job Posts
                            </h4>
                        </div>
                        <br />
                        <div class="panel-body">
                            <table class="table table-bordered " id="table">
                                <thead>
                                    <tr class="filters">
                                        <th>Job Post_ID</th>
                                        <th>Job Title</th>
                                        <th>
                                            Specialization
                                        </th>
                                        
										<th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT - Software
                                        </td>
                               
                                      
										<td>
                                                    <span class="label label-sm label-success">Approved</span>
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
											<a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>002</td>
                                        <td>
                                            HR Instructor
                                        </td>
                                        <td>
                                            HR Management
                                        </td>
                                        
                                        
										 <td>
                                                    <span class="label label-sm label-warning">Declined</span>
                                        </td>
                                        <td>
                                             <a href="#" data-toggle="modal" data-target="#view_decline">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
											<a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>003</td>
                                        <td>IT instructor</td>
                                        <td>
                                           IT - Hardware
                                        </td>
                                        
                                       
										<td>
                                                    <span class="label label-sm label-success">Approved</span>
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
										<td>004</td>
                                        <td>BA Intructor</td>
                                        <td>Business Administration</td>
                                   
										 <td>
                                                    <span class="label label-sm label-warning">Declined</span>
                                        </td>
										
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_decline">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
										<td>005</td>
                                        <td>PE Instructor</td>
                                        <td>Physical Education </td>
                                       
										<td>
                                                    <span class="label label-sm label-success">Approved</span>
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
										<td>006</td>
                                        <td>System Administrator</td>
                                        <td>SA</td>
                                        
                                       
										 <td>
                                                    <span class="label label-sm label-warning">Declined</span>
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_decline">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									 <tr>
										<td>007</td>
                                        <td>IT Instructor</td>
                                        <td>Darabase Analysis</td>
                                        
                                      
										<td>
                                                    <span class="label label-sm label-success">Approved</span>
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									 <tr>
										<td>008</td>
                                        <td>BA Instructor</td>
                                        <td>Business Adminitration</td>
                                        
                                       
										 <td>
                                                    <span class="label label-sm label-warning">Declined</span>
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_decline">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                          <a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									 <tr>
										<td>009</td>
                                        <td>Registration Personnel</td>
                                        <td>Clerking</td>
                                        
                                       
										<td>
                                                    <span class="label label-sm label-success">Approved</span>
                                        </td>
                                        <td>
                                             <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									 <tr>
										<td>010</td>
                                        <td>IT Instructor</td>
                                        <td>IT- Software</td>
                                        
                                       
										 <td>
                                                    <span class="label label-sm label-warning">Declined</span>
                                        </td>
                                        <td>
                                             <a href="#" data-toggle="modal" data-target="#view_decline">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#delete_confirm">
                                                <i class="livicon" data-name="folder-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete"></i>
                                            </a>
                                        </td>
                                    </tr>
									</tbody>
								</table>
													<!--view modal confirm-->
								<div class="modal fade" id="view_confirm" tabindex="-1" role="dialog" aria-labelledby="user_view_confirm_title" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h4 class="modal-title" id="user_view_confirm_title">
                                                View Job Post
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                           <section class="content">
												<div class="row">
													<div class="col-lg-12">
														<div class="panel-body">
															<div class="table-responsive">
																	
																	<table id="user" class="table table-bordered table-striped" style="clear:both">
																		<tbody>
																			<tr>
																				<td><b>Job Title:</b></td>
																				<td>
																					Instructor 1
																				</td>
																			</tr>
																			<tr>
																				<td><b>Specialization Requirement:</b></td>
																				<td>
																					IT-Software
																				</td>
																			</tr>
																			 <tr>
																				<td><b>Job Description:</b></td>
																				<td>
																				must be knowledgeable on softwares
																				</td>
																			</tr>
																			 <tr>
																				<td><b>Salary Grade:</b></td>
																				<td>
																					P 15,000/month
																				</td>
																			</tr>
																	
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												</section>
                           
												<div class="modal-footer">
													<button type="button" class="btn btn-default" data-dismiss="modal">Back</button>
												
												</div>
                                    </div>
								
									
                                </div>
								</div>
								</div>
											<!--view modal decline-->
								<div class="modal fade" id="view_decline" tabindex="-1" role="dialog" aria-labelledby="user_view_confirm_title" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h4 class="modal-title" id="user_view_confirm_title">
                                                View Job Post
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                           <section class="content">
												<div class="row">
													<div class="col-lg-12">
														<div class="panel-body">
															<div class="table-responsive">
																	
																	<table id="user" class="table table-bordered table-striped" style="clear:both">
																		<tbody>
																			<tr>
																				<td><b>Job Title:</b></td>
																				<td>
																					IT Instructor
																				</td>
																			</tr>
																			<tr>
																				<td><b>Specialization Requirement:</b></td>
																				<td>
																					IT-Software
																				</td>
																			</tr>
																			 <tr>
																				<td><b>Job Description:</b></td>
																				<td>
																					First one is the Development of Intranet for Admin Purposes and Integration next is Improve Communication.
																					The integration implemented was for the new accounting system. The improvement of communication affects communications
																					between partners, associated tour guides, consultants and head office by ensuring the remote querying of databases and of
																					financial reports.
																				</td>
																			</tr>
																			
																			 <tr>
																				<td><b>Salary Grade:</b></td>
																				<td>
																					P 15,000/month
																				</td>
																			</tr>
																			
																			<tr>
																				<td><b>Reason for Declining:</b></td>
																				<td>
																					Doesn't meet the requirements
																				</td>
																			</tr>
																			
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												</section>
                           
												<div class="modal-footer">
													<button type="button" class="btn btn-default" data-dismiss="modal">Back</button>
													<a class="btn btn-primary" data-toggle="modal" href="#decline">Approve</a>
												
												</div>
												<div class="modal fade bs-example-modal-md in" id="decline" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
												<div class="modal-dialog modal-md">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
															<h4 class="modal-title">Reason for Approving</h4>
														</div>
														<div class="modal-body">
															
															<p>
																Reason:
																<input id="name11" name="name" type="text-area" class="form-control">
															</p>
		
														</div>
														<div class="modal-footer">
															<button type="button" data-dismiss="modal" class="btn btn-danger">Cancel</button>
															<button type="button" class="btn btn-primary">Submit</button>
														</div>
													</div>
												</div>
											</div>
                                    </div>
								
									
                                </div>
								</div>
								</div>
								
								<div class="modal fade" id="delete_confirm" tabindex="-1" role="dialog" aria-labelledby="user_delete_confirm_title" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h4 class="modal-title" id="user_delete_confirm_title">
                                                Delete Request
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure to delete this request?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                            <a href="#" type="button" class="btn btn-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
								
                           
							 
                        
						
							
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
    <!-- end of page level js -->
  
</body>
</html>
