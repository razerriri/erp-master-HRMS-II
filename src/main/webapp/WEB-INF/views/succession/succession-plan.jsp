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
            <section class="content-header">
                <h1>Succession Plans</h1>
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
                            Succession Plan
                        </a>
                    </li>
                </ol>	
            </section>
			<div class="col-md-12">
					<div class="panel panel-white">
						<div class="panel-heading border-light">
							<h4 class="panel-title">
								Succession Plans
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
                                                    Employee ID
                                                </th>
                                                <th class="hidden-xs">
												Employee Name
                                                </th>
                                                <th>
												Position
                                                </th>
												<th>
												Organizational Unit
                                                </th>
												<th>
												Performance Average
                                                </th>
												<th>
                                                Competency Score
                                                </th>
												<th>
                                                Acquired Trainings
                                                </th>
												<th>
                                                    Remarks
                                                </th>
                                                <th>Successors</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
												041294
                                                </td>
                                                <td class="hidden-xs">Doris Gatan</td>
                                                <td>
												Academic Head
                                                </td>
												<td>
												Official
                                                </td>
												<td>
												8
                                                </td>
												<td>
												8
                                                </td>
												<td>
												Leadership Training
                                                </td>
												<td>
												Critical
                                                </td>
                                                <td>
                                                    <a class="btn btn-success btn-large" data-toggle="modal" data-href="#responsive" href="#responsive">View</a>
                                                </td>
                                            </tr>
                                        </tbody>										
                                    </table>
                                </div>
                        </div>
                    </div>
                </div>
                <!--- responsive model -->
                <div class="modal fade in" id="responsive" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">Successor Candidates</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-4">
									<a class="fancybox-effects-a" href="img/img_holder/400-x-699.jpg" title="Click aside to exit popup">
                                                            <img data-src="holder.js/241x241/#418bca:#fff" class="img-responsive gallery-style" alt="241x241" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDEiIGhlaWdodD0iMjQxIiB2aWV3Qm94PSIwIDAgMjQxIDI0MSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PHJlY3Qgd2lkdGg9IjI0MSIgaGVpZ2h0PSIyNDEiIGZpbGw9IiM0MThiY2EiLz48dGV4dCB0ZXh0LWFuY2hvcj0ibWlkZGxlIiB4PSIxMjAuNSIgeT0iMTIwLjUiIHN0eWxlPSJmaWxsOiNmZmY7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LXNpemU6MTVweDtmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4yNDF4MjQxPC90ZXh0Pjwvc3ZnPg==" style="width: 241px; height: 241px;">
                                                        </a>
                                        <p>
                                            Name:<input id="name" name="name" type="text" placeholder="Your name" class="form-control">
                                        </p>
                                        <p>
                                            <h3>Recent Evaluation Ratings:</h3>
                                        </p>
                                        <p>
                                            Performance Average:<input id="name2" name="name" type="text" placeholder="Performance Average" class="form-control">
                                        </p>
                                        <p>
                                            Competency Score:<input id="name3" name="name" type="text" placeholder="Competency Score" class="form-control">
                                        </p>
                                        <p>
                                            Acquired Trainings:<input id="name4" name="name" type="text" placeholder="Acquired Trainings" class="form-control">
                                        </p>         
										<p align="center">
										<button type="button" class="btn btn-success">Select Candidate</button>
										</p>
                                    </div>
                                    <div class="col-md-4">
                                      <a class="fancybox-effects-a" href="img/img_holder/400-x-699.jpg" title="Click aside to exit popup">
                                                            <img data-src="holder.js/241x241/#418bca:#fff" class="img-responsive gallery-style" alt="241x241" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDEiIGhlaWdodD0iMjQxIiB2aWV3Qm94PSIwIDAgMjQxIDI0MSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PHJlY3Qgd2lkdGg9IjI0MSIgaGVpZ2h0PSIyNDEiIGZpbGw9IiM0MThiY2EiLz48dGV4dCB0ZXh0LWFuY2hvcj0ibWlkZGxlIiB4PSIxMjAuNSIgeT0iMTIwLjUiIHN0eWxlPSJmaWxsOiNmZmY7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LXNpemU6MTVweDtmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4yNDF4MjQxPC90ZXh0Pjwvc3ZnPg==" style="width: 241px; height: 241px;">
                                                        </a>
                                        <p>
                                            Name:<input id="name" name="name" type="text" placeholder="Your name" class="form-control">
                                        </p>
                                         <p>
                                            <h3>Recent Evaluation Ratings:</h3>
                                        </p>
                                        <p>
                                            Performance Average:<input id="name2" name="name" type="text" placeholder="Performance Average" class="form-control">
                                        </p>
                                        <p>
                                            Competency Score:<input id="name3" name="name" type="text" placeholder="Competency Score" class="form-control">
                                        </p>
                                        <p>
                                            Acquired Trainings:<input id="name4" name="name" type="text" placeholder="Acquired Trainings" class="form-control">
                                        </p> 
										<p align="center">
										<button type="button" class="btn btn-success">Select Candidate</button>
										</p>
                                    </div>
									  <div class="col-md-4">
                                      <a class="fancybox-effects-a" href="img/img_holder/400-x-699.jpg" title="Click aside to exit popup">
                                                            <img data-src="holder.js/241x241/#418bca:#fff" class="img-responsive gallery-style" alt="241x241" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDEiIGhlaWdodD0iMjQxIiB2aWV3Qm94PSIwIDAgMjQxIDI0MSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PHJlY3Qgd2lkdGg9IjI0MSIgaGVpZ2h0PSIyNDEiIGZpbGw9IiM0MThiY2EiLz48dGV4dCB0ZXh0LWFuY2hvcj0ibWlkZGxlIiB4PSIxMjAuNSIgeT0iMTIwLjUiIHN0eWxlPSJmaWxsOiNmZmY7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LXNpemU6MTVweDtmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4yNDF4MjQxPC90ZXh0Pjwvc3ZnPg==" style="width: 241px; height: 241px;">
                                                        </a>
                                        <p>
                                            Name:<input id="name" name="name" type="text" placeholder="Your name" class="form-control">
                                        </p>
                                         <p>
                                            <h3>Recent Evaluation Ratings:</h3>
                                        </p>
                                        <p>
                                            Performance Average:<input id="name2" name="name" type="text" placeholder="Performance Average" class="form-control">
                                        </p>
                                        <p>
                                            Competency Score:<input id="name3" name="name" type="text" placeholder="Competency Score" class="form-control">
                                        </p>
                                        <p>
                                            Acquired Trainings:<input id="name4" name="name" type="text" placeholder="Acquired Trainings" class="form-control">
                                        </p>   
										<p align="center">
										<button type="button" class="btn btn-success">Select Candidate</button>
										</p>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn btn-warning">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END modal-->
                <div class="clearfix"></div>
                <div class="row">
                </div>
                <div class="clearfix"></div>
                <div class="row ">

                </div>
            </section>
        </aside>

        

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
