<!DOCTYPE html>
<html>

<head>
      <%@include file="../includes/head.jsp" %>
    <title>Human Resource Information System 1</title>
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="${pageContext.request.contextPath}/resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/only_dashboard.css" />
    	<link href="${pageContext.request.contextPath}/resources/vendors/modal/css/component.css" rel="stylesheet" />
</head>

<body class="skin-josh">
  
<%@include file="../includes/header.jsp" %>
  
<div class="wrapper row-offcanvas row-offcanvas-left">

<%@include file="../includes/sidebar.jsp" %>
    
<aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Succession Recommendation</h1>
                <ol class="breadcrumb">
				<li>
                        <a href="index.html">
                            <i class="livicon" data-name="home" data-size="14" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="#">Transaction</a>
                    </li>
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="users-add" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Succession Recommendation
                        </a>
                    </li>
                </ol>	
            </section>
			
			<div class="col-md-12">
								<div class="panel panel-white">
					<div class="panel-heading border-light">
							<h4 class="panel-title">
								Employee Details
							</h4>
						</div>
												 <form action="#" class="form-horizontal">
                                                        <div class="form-body">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="inputAge" class="col-md-3 control-label">Name :</label>
                                                                        <div class="col-md-9">
                                                                            <p class="form-control-static">sample data</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="inputLastName" class="col-md-3 control-label">Employee ID No. :</label>
                                                                        <div class="col-md-9">
                                                                            <p class="form-control-static">sample data</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="inputEmail" class="col-md-3 control-label">Designation :</label>
                                                                        <div class="col-md-9">
                                                                            <p class="form-control-static">
                                                                                sample data
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="selGender" class="col-md-3 control-label">Department :</label>
                                                                        <div class="col-md-9">
                                                                            <p class="form-control-static">sample data</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="inputBirthday" class="col-md-3 control-label">Date Hired :</label>
                                                                        <div class="col-md-9">
                                                                            <p class="form-control-static">sample data</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="inputPhone" class="col-md-3 control-label">Seniority :</label>
                                                                        <div class="col-md-9">
                                                                            <p class="form-control-static">sample data</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                    </form>
					<div class="panel panel-white">
					<div class="panel-heading border-light">
							<h4 class="panel-title">
								1. Recent Evaluation Ratings
							</h4>
						</div>
											<div class="panel panel-white">
						<div class="panel-body">
							<div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>                                                    
                                                Evaluations
                                                </th>
                                                <th class="hidden-xs">
												Ratings
                                                </th>                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
												Performance Average
                                                </td>
                                                <td class="hidden-xs">4</td>
												</tr>
                                        </tbody>
										<tbody>
                                            <tr>
                                                <td>
												Competency Score
                                                </td>
                                                <td class="hidden-xs">8</td>
												</tr>
                                        </tbody>
										<tbody>
                                            <tr>
                                                <td>
												Acquired Trainings
                                                </td>
                                                <td class="hidden-xs">Leading Change; Analytical Thinking</td>                                               
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
						</div>
					</div>
				</div>
				<div class="panel panel-white">
					<div class="panel-heading border-light">
							<h4 class="panel-title">
								2. Comment on Behavior and Performance
							</h4>
						</div>
						<!-- Textarea -->
<div class="panel panel-white">
  <div class="col-md-12">                     
    <textarea class="form-control" id="textarea" name="textarea">Brief comment on the overall behavior and performance of the employee.</textarea>
  </div>
</div>
					<div class="panel panel-white">
															<div class="col-md-12">
									<div class="col-md-6" style="padding-left:200px;">
										<a href="#" class="btn btn-primary " style="width:80px;">New</a>
										&nbsp &nbsp &nbsp &nbsp &nbsp
										<a href="#" class="btn btn-primary " style="width:80px;">Add</a>
										&nbsp &nbsp &nbsp &nbsp &nbsp
										<a href="#" class="btn btn-primary " >Update</a>
									</div>
									
									<div class="col-md-6" style="padding-left:200px;">
										<a href="#" class="btn btn-primary " style="width:80px;">Delete</a>
										&nbsp &nbsp &nbsp &nbsp &nbsp
										<a href="#" class="btn btn-primary " style="width:80px;">Exit</a>
									</div>
								</div>
								</div>
				</div>
				
						</div>
						
					</div>
					
				</div>
				
			</aside>
			</div>

        

        <!-- right-side -->
    </div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- global js -->
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
       <script src="${pageContext.request.contextPath}/resources/vendors/modal/js/classie.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/modal/js/modalEffects.js"></script>
    <!-- end of page level js -->
  
</body>
</html>
