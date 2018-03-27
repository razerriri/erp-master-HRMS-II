<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Competency Definition</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- font Awesome --> 

	<link href="<c:url value="/resources/vendors/modal/css/component.css"/>"rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/vendors/jasny-bootstrap/css/jasny-bootstrap.css"/>" rel="stylesheet" type="text/css" />	
	<link href="<c:url value="/resources/vendors/tags/bower_components/bootstrap/assets/css/docs.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/vendors/tags/bower_components/bootstrap/assets/css/docs2.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/vendors/tags/dist/bootstrap-tagsinput.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/tags/assets/app.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/vendors/datatables/css/dataTables.scroller.min.css"/>" rel="stylesheet" type="text/css" />	
    <link href="<c:url value="/resources/vendors/datatables/css/dataTables.bootstrap.css"/>" rel="stylesheet" type="text/css" />
	  
    <link href="<c:url value="/resources/css/pages/tab.css"/>" rel="stylesheet" type="text/css" />
    
    <link href="<c:url value="/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css"/>"rel="stylesheet" type="text/css" />    
    <link href="<c:url value="/resources/css/styles/black.css"/>" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="<c:url value="/resources/css/panel.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/css/metisMenu.css"/>"rel="stylesheet" type="text/css"/>
	<link href="<c:url value="/resources/css/pages/tables.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/vendors/datatables/css/select2.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/vendors/datatables/css/dataTables.colReorder.min.css"/>" type="text/css" rel="stylesheet" />  
    
</head>
<body class="skin-josh">

 <header class="header">
        <a href="http://localhost:8080/competency/dashboard" class="logo">
            <img src="<c:url value="/resources/img/logo.png"/>" alt="Logo">
        </a>		
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
			<div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button" style="background-color:#41625f;">
                    <div class="responsive_nav"></div>
                </a>
            </div>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
						<!--NAVIGATION DASHBOARD-->
						<li>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="livicon" data-name="home" data-size="28" data-c="#ec7f7d" data-hc="#ec7f7d" data-loop="true" title="Human Resource"></i>
							</a>
						</li>				
				
						<!--NAVIGATION REQUISITION AND SELECTION-->
						<li class="dropdown-messages-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="livicon" data-name="edit" data-size="28" data-c="#65a7df" data-hc="#65a7df" data-loop="true" title="Requisition and Selection"></i>
							</a>
							<ul class="dropdown-menu dropdown-messages pull-right">	
								<li>
									<a href="#">
									<i class="livicon" data-name="fa-arrow" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true" ></i>
									<span class="title">Recruitment</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="address-book" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
									<span class="title">Applicant Management</span>
									</a>
								</li>
								<li>
									<a href="#">
									<i class="livicon" data-name="user-flag" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
									<span class="title">New Hire on Board</span>
									</a>
								</li>					
							</ul>
						</li>	
					
						<!--NAVIGATION TALENT MANAGEMENT-->					
						<li class="dropdown-messages-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="livicon" data-name="user" data-loop="true" data-color="#00bc8c" data-hovercolor="#00bc8c" data-size="28" title="Talent Management"></i>
							</a>
							<ul class="dropdown-menu dropdown-messages pull-right">	
								<li>
									<a href="#">
									<i class="livicon" data-name="star-full" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Competency Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="briefcase" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Training Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="users-add" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Succession Planning</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="notebook" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Learning Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="dashboard" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Performance Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="trophy" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Social Recognition</span>
									</a>
								</li>	
							</ul>
						</li>

						
						<!--NAVIGATION ATTENDANCE AND LEAVE MANAGEMENT-->							
						<li class="dropdown-messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="calendar" data-size="28" data-c="#eea031" data-hc="#eea031" data-loop="true" title="Attendance and Leave Management"></i>
                            </a>
							<ul class="dropdown-menu dropdown-messages pull-right">
								<li>
									 <a href="#">
										<i class="livicon" data-name="alarm" data-size="18" data-c="#A9B6BC" data-hc="#A9B6BC" data-loop="true"></i>
										<span class="title">Time and Attendance</span>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="livicon" data-name="table" data-size="18" data-c="#A9B6BC" data-hc="#A9B6BC" data-loop="true"></i>
										<span class="title">Timesheet Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
										<i class="livicon" data-name="plane-up" data-size="18" data-c="#A9B6BC" data-hc="#A9B6BC" data-loop="true"></i>
										<span class="title">Leave Management</span>
									</a>
								</li>						
							</ul>
						</li>
					
						<!--NAVIGATION SCHEDULING-->						
						<li class="dropdown-messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="list" data-size="28" data-c="#5ea0d7" data-hc="#5ea0d7" data-loop="true" title="Scheduling"></i>
                            </a>
							<ul class="dropdown-menu dropdown-messages pull-right">	
							<li>
								<a href="#">
									<i class="livicon" data-name="exchange" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
									<span class="title">Shifting</span>
								</a>
							</li>	
							<li>
								<a href="#">
									<i class="livicon" data-name="exchange" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
									<span class="title">Scheduling</span>
								</a>
							</li>		
							</ul>
                        </li>

						<!--NAVIGATION EMPLOYEE SELF SERVICE-->								
						<li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="comments" data-size="28" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true" title="Employee Self-Service"></i>
                            </a>
                        </li>
						
						
						<!--NAVIGATION CORE HUMAN CAPITAL MANAGEMENT-->	
						<li>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="livicon" data-name="users" data-size="28" data-c="#f1a02c" data-hc="#f1a02c" data-loop="true" title="Human Resource"></i>
							</a>
						</li>
						
						<!--NAVIGATION FINANCIAL-->						
						<li class="dropdown-messages-menu">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="money" data-size="28" data-c="#f38a87" data-hc="#f38a87" data-loop="true" title="Financial"></i>
                            </a>
							<ul class="dropdown-menu dropdown-messages pull-right">	
								<li>
									<a href="#">
										<i class="livicon" data-name="credit-card" data-size="18" data-c="#EC7F7D" data-hc="#EC7F7D" data-loop="true"></i>
										<span class="title">Payroll</span>
									</a>
								</li>	
								<li>
									<a href="#">
										<i class="livicon" data-name="piggybank" data-size="18" data-c="#EC7F7D" data-hc="#EC7F7D" data-loop="true"></i>
										<span class="title">Compensation</span>
									</a>
								</li>		
								<li>
									<a href="#">
										<i class="livicon" data-name="balance" data-size="18" data-c="#EC7F7D" data-hc="#EC7F7D" data-loop="true"></i>
										<span class="title">Claims and Reimbursements</span>
									</a>
								</li>
							</ul>
                        </li>						
						
						<!--NAVIGATION REPORTS-->								
						<li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="barchart" data-size="28" data-c="#5b9cd2" data-hc="#5b9cd2" data-loop="true" title="Reports"></i>
                            </a>
                        </li>
						
						<!--NAVIGATION SYSTEM SETUP-->								
						<li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="gears" data-size="28" data-c="#5b9cd2" data-hc="#5b9cd2" data-loop="true" title="System Setup"></i>
                            </a>
                        </li>

					<!--USER MENU-->
                     <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img data-src="holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
                            <div class="riot">
                                <div>
                                    User
                                    <span>
                                        <i class="caret"></i>
                                    </span>
                                </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header bg-light-blue">
                                <img data-src="holder.js/90x90/#fff:#000" class="img-responsive img-circle" alt="User Image">
                                <p class="topprofiletext">User</p>
                            </li>
                            <!-- Menu Body -->
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="user" data-s="18"></i>
                                    My Profile
                                </a>
                            </li>
                            <li role="presentation"></li>
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="gears" data-s="18"></i>
                                    Account Settings
                                </a>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="lockscreen.html">
                                        <i class="livicon" data-name="lock" data-s="18"></i>
                                        Lock
                                    </a>
                                </div>
                                <div class="pull-right">
                                    <a href="login.html">
                                        <i class="livicon" data-name="sign-out" data-s="18"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
			</ul>
			</div>
        </nav>
    </header>
     
    
	<div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas" style="background-color:#547d79;">
			<section class="sidebar ">
                <div class="page-sidebar  sidebar-nav" style="background-color:#547d79;">
                   
                    <div class="clearfix"></div>
                    <!-- BEGIN SIDEBAR MENU -->
                    <ul id="menu" class="page-sidebar-menu">
                        <li>
                            <a href="http://localhost:8080/competency/dashboard">
                                <i class="livicon" data-name="home" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
                                <span class="title">Dashboard</span>
                            </a>

                        </li>
						<li>
                            <a href=" ">
                                <i class="livicon" data-name="list-ul" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
                                <span class="title">System Setup</span>
								<span class="fa arrow"></span>
                            </a>
							
						
							
							<ul class="sub-menu">
								<li>
									<a href="http://localhost:8080/competency/general">
										<i class="fa fa-angle-double-right"></i> 
										General Setup
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i> 
										Cluster Definition
									</a>
									<ul class="sub-menu">
										<li>
											<a href="http://localhost:8080/competency/core" style="font-size:80%;">
												<i class="fa fa-angle-double-right"></i> 
												Core Competencies
											</a>
										</li>
										<li>
											<a href="http://localhost:8080/competency/leadership" style="font-size:80%;">
												<i class="fa fa-angle-double-right"></i> 
												Leadership Competencies
											</a>
										</li>
										<li>
											<a href="http://localhost:8080/competency/functional" style="font-size:80%;">
												<i class="fa fa-angle-double-right"></i> 
												Functional Competencies
											</a>
										</li>	
									</ul>     
									
								</li>	
								<li>
									<a href="http://localhost:8080/competency/job">
										<i class="fa fa-angle-double-right"></i>
										Job Competencies
									</a>
								</li>	
								<li>
									<a href="http://localhost:8080/competency/competency">
										<i class="fa fa-angle-double-right"></i> 
										<span class="title">Competency Definition</span>
									</a>
								</li>					
							</ul>                     
                        </li>
						<li>
                            <a href=" ">
                                <i class="livicon" data-name="desktop" data-size="18" data-c="#5bc0de" data-hc="#5bc0de" data-loop="true"></i>
                                <span class="title">Transaction</span>
								<span class="fa arrow"></span>
                            </a>
							
							<ul class="sub-menu">
                               
								
								<li>
                                    <a href="http://localhost:8080/competency/evaluation">
                                        <i class="fa fa-angle-double-right"></i>
                                        Competency Evaluation
                                    </a>
                                </li>    
                            </ul>
                        </li>				
						
						
						<li>
                            <a href=" ">
                                <i class="livicon" data-name="tasks" data-size="18" data-c="#EF6F6C" data-hc="#EF6F6C" data-loop="true"></i>
                                <span class="title">Reports</span>
								<span class="fa arrow"></span>
                            </a>
							
							<ul class="sub-menu">
                                <li>
                                    <a href="http://localhost:8080/competency/reports">
                                        <i class="fa fa-angle-double-right"></i>
                                        Competency Report
                                    </a>
                                </li>

                                                            </ul>

                        </li>
						
						<li>
                            <a href=" ">
                                <i class="livicon" data-name="gears" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
                                <span class="title">Utilities</span>
								<span class="fa arrow"></span>
                            </a>
							
							<ul class="sub-menu">
                                <li>
                                    <a href=" ">
                                        <i class="fa fa-angle-double-right"></i>
                                        Manage Password
                                    </a>
                                </li>
                                <li>
                                    <a href="blank.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Logout
                                    </a>
                                </li>                                
                            </ul>
                        </li>						
                        </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
            
            </section>
            <!-- /.sidebar -->
		</aside>
        
		<aside class="right-side">
			<section class="content-header">
					<!--section starts-->
					<h1>&nbsp COMPETENCY DEFINITION</h1>
					<ol class="breadcrumb">
						<li>
							<a href="http://localhost:8080/competency/dashboard">
								<i class="livicon" data-name="home" data-size="14" data-loop="true"></i>
								Home
							</a>
						</li>
						<li>
							<a href="#">System Setup</a>
						</li>
						<li class="active">Competency Definition</li>
					</ol>
				</section>
				<!--section ends-->
			<section class="content">
					<!--main content-->
					<div class="row">
						 <div class="col-md-12">
							<div class="panel panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="livicon" data-name="printer" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
										Competency Definition
									</h3>
									<span class="pull-right clickable">
										<i class="glyphicon glyphicon-chevron-up"></i>
									</span>
								</div>
								<div class="panel-body">
									<div >
										<ul class="nav nav-tabs" style="margin-bottom: 15px;" style="font-size:80%;">
											<li class="active">
												<a href="#1" data-toggle="tab">General</a>
											</li>
											<li>
												<a href="#2" data-toggle="tab">Competency Level</a>
											</li>
											<li>
												<a href="#3" data-toggle="tab">Required Training</a>
											</li>
											

										</ul>
									<div id="myTabContent" class="tab-content">
										<div class="tab-pane fade active in" id="1">
											<div class="row">
												<div class="bs-example col-lg-12">
													<form class="form-horizontal" >
														<fieldset >
															<!-- Form Name -->															
															<!-- Text input-->
															<div class="col-md-6" style="padding-top:25px;">
																<div class="form-group" style="font-size:90%;" >
																	<label class="col-md-3 control-label" for="textinput">Code</label>  
																	<div class="col-md-9">
																		<input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md">															
																	</div>																
																		<!-- Text input-->
																	<br></br>
																	<br></br>
																		<label class="col-md-3 control-label" for="textinput">Description</label>  
																		<div class="col-md-9">
																			<input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md">						
																		</div>
																	<br></br>
																	<br></br>
																		<label class="col-md-3 control-label" for="name">Cluster Name</label>												
																		<div class="col-md-9">
																			<select id="selectbasic" name="selectbasic" class="form-control">
																				<option value="0">Select</option>
																				<option value="1">Core</option>
																				<option value="2">Leadeship</option>
																				<option value="3">Functional</option>
																			</select>																	 
																		</div>
																	<br></br>
																	<br></br>
																		<label class="col-md-3 control-label" for="name">Occupation</label>												
																		<div class="col-md-9">
																			<select id="selectbasic" name="selectbasic" class="form-control">
																				<option value="1">Select</option>																
																			</select>																	 
																		</div>
																</div>
															</div>

															
															
															
															 <div class="panel-body col-md-6" style="padding-left:30px; font-size:80%;">                                
																	<div id="sample_editable_1_wrapper" class="">
																		<table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_2" role="grid">
																			
																			<thead class="info" style="color:white;">
																				<tr>
																				<th><input type="checkbox" name="checkboxes" id="cb-basic" value=""></th>
																				<th  style="color:white;">Required in Job Title</th>		
																																																			
																			</tr>
																			</thead>
																			<tbody>
																			  <tr>
																				
																				<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				<td>Proctors</td>
																			</tr>
																			<tr>
																				
																				<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				<td>Professional</td>
																			</tr>
																			<tr>
																				
																				<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				<td>Security
																			</tr>
																			<tr>
																				
																				<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				<td>Proctors</td>
																			</tr>
																			<tr>
																				
																				<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				<td>Security</td>
																			</tr>
																				
																			</tbody>
																		</table>
																	</div>
																</div>
																

															
														</fieldset>
													
													</form>	
												</div>
											</div>                                    
										</div>

										<div class="tab-pane fade" id="2">
												<div class="col-md-12 bs-example2">
													<!-- BEGIN SAMPLE TABLE PORTLET-->
													<div class="portlet box danger">                           
														<div class="portlet-body col-md-12">
															<div class="table-scrollable">
																<table class="table table-bordered table-hover"style="font-size:80%;" id="data">
																	<thead class="info" style="color:white;">
																		<tr>
																			<th>Proficiency Level</th>
																			<th>Behavioral Indicators</th>
																		</tr>
																	</thead>
																	<tbody>
																	<tr >

																			<td>Basic</td>
																			<td>1. Requires guidance or assistance of peer or supervisor to apply the competency.
																				<br/>
	2. Limited to own tasks and requires full supervision to perform duties and responsibilities. Competency is at a level where specific procedures are observed.

																			</td>                                          
																		</tr>
																		<tr>
																			<td>Intermediate</td>
																			<td>1.Applies the competency with minimal supervision.
																				<br/>
	2. Limited to own tasks and requires some supervision and further training. Competency is at a level where specific procedures are observed. 
																			</td>
																		</tr>
																		<tr>
																			<td>Advanced</td>
																			<td>1. Develops new or enhances existing processes, procedures, and policies.<br/>
	2. Generally confined in own set of tasks, but has tasks that require working with others, with some activities not necessarily covered by procedures.</td>
																		</tr>
																		<tr>
																			<td>Superior</td>
																			<td>1. Integrates efforts of one or more practitioners and recommends improvements on policies, programs and regulations.
																				<br/>
	2. Covers/integrates work of different individuals/work groups, multiple tasks, diverse work units, varied situations.
																			</td>
																		</tr>
																	</tbody>
																</table>

															</div>
															</div>                    
													</div>
													<!-- END SAMPLE TABLE PORTLET-->
												</div>
											</div>
										
										<div class="tab-pane fade " id="3">
											<div class="row">
												<div class="bs-example3 col-lg-12">
													<form class="form-horizontal">
														<fieldset>
															<!-- Form Name -->															
															<div class="col-md-12"><!-- Text input-->
																<div class="portlet-body col-md-6" style="font-size:80%;padding-top:20px;">
																	<div class="table-scrollable">
																		<table class="table table-striped table-bordered table-hover">
																			<thead class="info" style="color:white;">
																				<tr>
																					<th style="width:1000px !important">Required Training</th>
																					<th  style="width: 200px;">Basic</th>
																					<th  style="width: 200px;">Intermediate</th>
																					<th  style="width: 200px;">Advanced</th>
																					<th  style="width: 200px;">Superior</th>																	
																				</tr>
																			</thead>
																			<tbody>
																				<tr>
																					<td>Developing and Managing Relationships</td>
																					<td><input type="checkbox" name="checkboxes" id="cb-basic" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-prof" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-adv" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				</tr>
																				<tr>
																					<td>Customer Service and Selling Skills</td>
																					<td><input type="checkbox" name="checkboxes" id="cb-basic" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-prof" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-adv" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				</tr>
																				<tr>
																					<td>Coaching and Counseling for Peak Performance</td>
																					<td><input type="checkbox" name="checkboxes" id="cb-basic" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-prof" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-adv" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				</tr>
																				<tr>
																					<td>Cetified Team Leader</td>
																					<td><input type="checkbox" name="checkboxes" id="cb-basic" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-prof" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-adv" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				</tr>
																				<tr>
																					<td>Cetified Professional Manager</td>
																					<td><input type="checkbox" name="checkboxes" id="cb-basic" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-prof" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-adv" value=""></td>
																					<td><input type="checkbox" name="checkboxes" id="cb-sup" value=""></td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																</div>
															

																 <div class="panel-body col-md-6" style="padding-left:30px; font-size:80%;">                                
																	<div id="req-training-wrap" class="">
																		<table class="table table-striped table-bordered table-hover dataTable no-footer" id="req-training" role="grid">
																			
																			<thead class="info" style="color:white;">
																				<tr role="row">
																					<th style="width:1000px !important">Required Training</th>
																					
																				</tr>
																			</thead>
																			<tbody>
																			   <tr role="row" class="odd">
																					<td>Developing and Managing Relationships</td>
																				
																				</tr> 
																				<tr role="row" class="odd">
																					<td>Customer Service and Selling Skills</td>
																					
																				</tr> 	
																				<tr role="row" class="odd">
																					<td>Coaching and Counseling for Peak Performance</td>
																					
																				</tr> 	
																				<tr role="row" class="odd">
																					<td>Cetified Team Leader</td>
																				
																				</tr> 	
																				<tr role="row" class="odd">
																					<td>Cetified Professional Manager</td>
																					
																				</tr> 	
																				
																			</tbody>
																		</table>
																	</div>
																</div>
								 
															</div>
									<!-- END EXAMPLE TABLE PORTLET-->
														</fieldset>
													</form>	
												</div>			
														
													
												</div>
											</div>                                    
										
									
									
										
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--main content ends-->
					</section>
			

			<!-- content --> 
			</aside>
			<!-- right-side --> 
			</div>
					
		</aside>
   
   
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- global js -->
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <!--livicons-->
    <script src="<c:url value="/resources/vendors/livicons/minified/raphael-min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/vendors/livicons/minified/livicons-1.4.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/josh.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/metisMenu.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/vendors/holder-master/holder.js"/>" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
	
	<script type="text/javascript" src="<c:url value="/resources/vendors/tags/dist/bootstrap-tagsinput.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/vendors/jasny-bootstrap/js/jasny-bootstrap.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/tags/bower_components/typeahead.js/dist/typeahead.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/tags/bower_components/typeahead.js/test/vendor/hogan-2.0.0.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/tags/assets/app_bs3.js"/>"> </script>
	
	<script type="text/javascript" src="<c:url value="/resources/vendors/datatables/jquery.dataTables.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/dataTables.tableTools.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/dataTables.scroller.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/dataTables.bootstrap.js"/>"> </script>
	 <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/select2.min.js"/>"> </script>

	<script type="text/javascript" src="<c:url value="/resources/vendors/modal/js/classie.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/vendors/modal/js/modalEffects.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/js/table.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/dataTables.colReorder.min.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/js/pages/table-editable-competency.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/js/pages/table-training.js"/>"> </script>

    <script type="text/javascript" src="<c:url value="/resources/vendors/jasny-bootstrap/js/jasny-bootstrap.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/tags/bower_components/typeahead.js/dist/typeahead.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/tags/bower_components/typeahead.js/test/vendor/hogan-2.0.0.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/tags/assets/app_bs3.js"/>"> </script>
	
   

	
	
    <!-- end of page level js -->
</body>
</html>