<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Core Competencies </title>
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
    
    <link href="<c:url value="/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css"/>"rel="stylesheet" type="text/css" />
    
    <link href="<c:url value="/resources/css/styles/black.css"/>" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="<c:url value="/resources/css/panel.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/css/metisMenu.css"/>"rel="stylesheet" type="text/css"/>
    <!-- end of global css -->
    <!--page level css -->
    <link href="<c:url value="/resources/vendors/datatables/css/dataTables.colReorder.min.css"/>" type="text/css" rel="stylesheet" />
        
	<link href="<c:url value="/resources/js/pages/table-editable-competency.js"/>" type="text/css" rel="stylesheet" />
    
    <link href="<c:url value="/resources/vendors/datatables/css/dataTables.scroller.min.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/datatables/css/dataTables.bootstrap.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/pages/tables.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/modal/css/component.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/jasny-bootstrap/css/jasny-bootstrap.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/tags/bower_components/bootstrap/assets/css/docs.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/tags/dist/bootstrap-tagsinput.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/tags/assets/app.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/datatables/css/dataTables.scroller.min.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/datatables/css/dataTables.bootstrap.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/pages/tables.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/vendors/datatables/css/select2.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/pages/icon.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/pages/buttonbuilder2.css"/>" rel="stylesheet" type="text/css" />
    
    <!--end of page level css-->
    
	
    
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
                <h1>&nbsp CORE COMPETENCIES</h1>
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
                    <li class="active">Core Competencies</li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                <!--main content-->
				<div class="modal fade in" id="responsive" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog ">					
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">
									<i class="fa fa-plus"></i>
									Add New Competency
								</h4>
							</div>
							<div class="modal-body">
								<div class="input-group col-md-12">									
									<h4>Core Competency</h4>
									<p>
										<input id="name" name="name" type="text" placeholder="Competency Name" class="form-control">
									</p>				
								</div>						
							</div>
							<div class="modal-footer">
								<button type="button" data-dismiss="modal" class="btn">Cancel</button>
								<button type="button" class="btn btn-primary">Save</button>
							</div>						
						</div>
                    </div>
                </div>
                <!-- END modal-->
                

				<div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-info filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                        <div class="caption">
											<i class="livicon" data-name="users" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
											Core Competency Table
										</div>                                  
                                </div>                      
                            </div>
                            <div class="panel-body">                                
                                <div id="sample_editable_1_wrapper" class="">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_2" role="grid">
                                        <div class="table-toolbar">
												<div class="btn-group">
												<a class="btn btn-info btn-large" data-toggle="modal" data-href="#responsive" href="#responsive">Add New
													<i class="fa fa-plus"></i>
													</a>
													
												</div>
												<div class="btn-group pull-right">
													<button class="btn dropdown-toggle btn-info" data-toggle="dropdown">
														Tools
														<i class="fa fa-angle-down"></i>
													</button>
													<ul class="dropdown-menu pull-right">
														<li>
															<a href="#">Print</a>
														</li>
														<li>
															<a href="#">Save as PDF</a>
														</li>
														<li>
															<a href="#">Export to Excel</a>
														</li>
													</ul>
												</div>
											</div>
										
										
										<thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_2" rowspan="1" colspan="1">Competency Name</th>											                                         
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_2" rowspan="1" colspan="1" aria-label="
                                                 Edit
                                            : activate to sort column ascending" style="width: 88px;">Edit</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_2" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 125px;">Delete</th>
											
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <tr role="row" class="odd">
                                                <td class="sorting_1">Analytical Thinking</td>												                                                                                  
                                                <td>
                                                    <a class="btn" style="width:35px;  background-color:#f89a14; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="pencil" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
													 
                                                </td>
                                                <td>
                                                    <a class="btn " style="width:35px;  background-color:#a9b6bc; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="trash" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
                                                </td>
                                            </tr> 
											<tr role="row" class="odd">
                                                <td class="sorting_1">Achievement Focus</td>                                                                                 
                                                <td>
                                                    <a class="btn" style="width:35px;  background-color:#f89a14; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="pencil" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
													 
                                                </td>
                                                <td>
                                                    <a class="btn " style="width:35px;  background-color:#a9b6bc; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="trash" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
                                                </td>
                                            </tr> 	
											<tr role="row" class="odd">
                                                <td class="sorting_1">Drafting Skills</td>                                                                                 
                                                <td>
                                                    <a class="btn" style="width:35px;  background-color:#f89a14; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="pencil" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
													 
                                                </td>
                                                <td>
                                                    <a class="btn " style="width:35px;  background-color:#a9b6bc; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="trash" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
                                                </td>
                                            </tr> 	
											<tr role="row" class="odd">
                                                <td class="sorting_1">Flexible Thinking</td>                                                                                  
                                                <td>
                                                    <a class="btn" style="width:35px;  background-color:#f89a14; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="pencil" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
													 
                                                </td>
                                                <td>
                                                    <a class="btn " style="width:35px;  background-color:#a9b6bc; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="trash" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
                                                </td>
                                            </tr> 	
											<tr role="row" class="odd">
                                                <td class="sorting_1">Managing Resources</td>                                                                                 
                                                <td>
                                                    <a class="btn" style="width:35px;  background-color:#f89a14; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="pencil" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
													 
                                                </td>
                                                <td>
                                                    <a class="btn " style="width:35px;  background-color:#a9b6bc; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="trash" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
                                                </td>
                                            </tr> 	
											<tr role="row" class="odd">
                                                <td class="sorting_1">Teamwork and Team Leadership</td>                                                                                   
                                                <td>
                                                    <a class="btn" style="width:35px;  background-color:#f89a14; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="pencil" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
													 
                                                </td>
                                                <td>
                                                    <a class="btn " style="width:35px;  background-color:#a9b6bc; " data-toggle="modal" data-href="#responsive" href="#responsive">
														<i class="livicon" data-name="trash" data-size="16" data-c="#fff" data-hc="#fff" data-loop="true"></i>
													</a>
                                                </td>
                                            </tr> 	
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END EXAMPLE TABLE PORTLET--> </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                        </div>
                    </div>
             
			</section>
                <!--main content ends--> 
            <!-- content -->
        <!-- right-side --> 
		</aside>
		</div>
	
    
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
    
    <script type="text/javascript" src="<c:url value="/resources/vendors/jasny-bootstrap/js/jasny-bootstrap.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/tags/bower_components/typeahead.js/dist/typeahead.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/tags/bower_components/typeahead.js/test/vendor/hogan-2.0.0.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/tags/assets/app_bs3.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/jquery.dataTables.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/jquery.dataTables.min.js"/>"> </script>

    <script type="text/javascript" src="<c:url value="/resources/js/pages/table-editable-competency.js"/>"> </script>
	
   	<script type="text/javascript" src="<c:url value="/resources/vendors/datatables/jquery.dataTables.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/dataTables.tableTools.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/dataTables.colReorder.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/dataTables.scroller.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/dataTables.bootstrap.js"/>"> </script>
	
    <script type="text/javascript" src="<c:url value="/resources/js/pages/table-advanced.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/vendors/datatables/select2.min.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/vendors/modal/js/classie.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/vendors/modal/js/modalEffects.js"/>"> </script>
	
    <!-- end of page level js -->
</body>
</html>