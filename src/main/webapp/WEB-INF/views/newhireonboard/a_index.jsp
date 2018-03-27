<!DOCTYPE html>
<html>

<head>
 	
 	<%@ include file ="../includes/head.jsp" %>  
    
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
                <h1>WELCOME TO NEW HIRE ON BOARD!</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Dashboard
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
            <div class="row">
                <div class="col-lg-6">
                    <!-- Number of New Hire Per Department -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="livicon" data-name="linechart" data-size="16" data-loop="true" data-c="#000" data-hc="#000"></i>
                                Number of New Hire Per Department
                            </h3>
                        </div>
                        <div class="panel-body">
                            <div id="basicFlotLegend" class="flotLegend"></div>
                            <div id="bar-chart" class="flotChart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <!-- New Hire Onboarding Status -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="livicon" data-name="piechart" data-size="16" data-loop="true" data-c="#000" data-hc="#000"></i>
                                    New Hire Onboarding Status
                            </h3>
                        </div>
                        <div class="panel-body">
                            <div class="demo-container">
                                <div id="placeholderbasic" class="demo-placeholder"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- New Hire on Board Table Starts Here -->
                    <div class="portlet box primary">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="livicon" data-name="users" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    New Hire on Board
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-scrollable">
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Position Title</th>
                                            <th>Appointment Status</th>
                                            <th>Department</th>
                                            <th>Hiring Manager</th>
                                            <th>Date Hired</th>
                                            <th>Progress</th>
                                            <th>Status<th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Camila Estrabao</td>
                                            <td>Professor IV</td>
                                            <td>Permanent</td>
                                            <td>Computer Science</td>
                                            <td>Cherry Lopez</td>
                                            <td>January 10, 2018</td>
                                            <td>
								                <div class="progress progress-striped">
											    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuetransitiongoal="100"></div>
											    </div>
                                            </td>
                                            <td>Completed</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Sarah Fernandez</td>
                                            <td>Assistant Professor III</td>
                                            <td>Temporary</td>
                                            <td>Information Technology</td>
                                            <td>Cherry Lopez</td>
                                            <td>January 11, 2018</td>
                                            <td>
								                <div class="progress progress-striped">
											    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuetransitiongoal="60"></div>
											    </div>
                                            </td>
                                            <td>On-Going</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Anna Gomez</td>
                                            <td>Associate Professor II</td>
                                            <td>Contractual</td>
                                            <td>Computer Engineering</td>
                                            <td>Cherry Lopez</td>
                                            <td>January 18, 2018</td>
                                            <td>
								                <div class="progress progress-striped">
											    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuetransitiongoal="10"></div>
											    </div>
                                            </td>
                                            <td>Terminated</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Mary Joy Sario</td>
                                            <td>Professor I</td>
                                            <td>Part-Time</td>
                                            <td>Political Science</td>
                                            <td>Cherry Lopez</td>
                                            <td>January 19, 2018</td>
                                            <td>
								                <div class="progress progress-striped">
											    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuetransitiongoal="50"></div>
											    </div>
                                            </td>
                                            <td>On-Going</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- New Hire on Board Table Ends Here -->
                </div>
            </div>
        </section>
        </aside>
        <!-- right-side -->
    </div>
    
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    
   	<%@ include file ="../includes/footer.jsp"%>  
   
</body>
</html>
