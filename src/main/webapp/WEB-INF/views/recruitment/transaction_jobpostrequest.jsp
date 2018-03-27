<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <%@ include file="../includes/head.jsp" %>
    <title>Human Resources Management System</title>
    
</head>

<body class="skin-josh">
    <%@ include file="../includes/header.jsp" %>

	<%@include file="../includes/sidebar.jsp" %>
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
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
                                Job Post Requests
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
                                        
                                        <th>Date Requested</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>001</td>
                                        <td>Instructor 1</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            03/27/2018
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            
                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            
                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            
                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            
                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            
                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            
                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>

                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>

                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                           
                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>

                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            
                                        </td>
                                    </tr> <tr>
                                        <td>001</td>
                                        <td>IT Instructor</td>
                                        <td>
                                            IT-Software
                                        </td>
                                        
                                        <td>
                                            10/13/2017
                                        </td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#view_confirm">
                                                <i class="livicon" data-name="folder-open" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view post"></i>
                                            </a>
                                            
                                        </td>
                                    </tr>
									</tbody>
								</table>
								<!--view modal-->
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
																				<td><b>Specialization:</b></td>
																				<td>
																					IT-software
																				</td>
																			</tr>
																			 <tr>
																				<td><b>Job Description:</b></td>
																				<td>
																					must be knowledgeable on sofwares
																				</td>
																			</tr>
																			
																			 <tr>
																				<td><b>Salary Grade:</b></td>
																				<td>
																					P 15,000.00 
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
													<a class="btn btn-danger" data-toggle="modal" href="#decline">Decline</a>
													<button type="button" data-dismiss="modal" class="btn btn-info">Approve</button>
												</div>
												<div class="modal fade bs-example-modal-md in" id="decline" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
												<div class="modal-dialog modal-md">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
															<h4 class="modal-title">Reason for Declining</h4>
														</div>
														<div class="modal-body">
															
															<p>
																Reason:
																<input id="name11" name="name" type="text-area" class="form-control">
															</p>
		
														</div>
														<div class="modal-footer">
															<button type="button" data-dismiss="modal" class="btn btn-danger">Cancel</button>
															<button type="button" data-dismiss="modal"" class="btn btn-primary">Submit</button>
														</div>
													</div>
												</div>
											</div>
                                    </div>
								
									
                                </div>
								</div>
								</div>
							
					
                           
							 
                        
							<!--delete modal-->
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
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>
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
   <%@include file="../includes/footer.jsp" %>
</body>
</html>
