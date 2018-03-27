<!DOCTYPE html>
<html>
<head>
   
	<meta charset="UTF-8">
    <title>Requests</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/icon-logo.png" type="image/x-icon">
    <%@ include file="../includes/head.jsp" %>
   
    <!-- global css -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="${pageContext.request.contextPath}/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="${pageContext.request.contextPath}/resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>
    <!-- end of global css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/vendors/select2/select2.css" rel="stylesheet" />
	
	<link href="${pageContext.request.contextPath}/resources/vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/select2/select2-bootstrap.css" />
    <!--clock face css-->
    <link href="${pageContext.request.contextPath}/resources/vendors/iCheck/skins/all.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/formelements.css" rel="stylesheet" />
    <!--end of page level css-->
	
    <!--end of page level css-->
</head>
<body class="skin-josh">

<%@ include file="../includes/header.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@include file="../includes/sidebar.jsp" %>
 
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Requests</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="livicon" data-name="dashboard" data-size="14" data-loop="true"></i>
                            Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="list" data-size="14" data-loop="true"></i>
                            Requests
                        </a>
                    </li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                <!--main content-->
         
          <div class="col-lg-12 col-md-6 col-sm-6">
                       <div class="panel panel-plain">
                            <div class="panel-heading">
                                <h3 class="panel-title" style="height:35px;">
                                    <i class="livicon" data-name="list" data-size="16" data-c="#000" data-hc="#555">                 
                                    </i>
                                 	  &nbsp;REQUESTS
                                 </h3>  
                            </div>
                            <div class="panel-body">
                           		
                                    <table class="table table-striped table-responsive" id="table1">
                                        <thead>
                                            <tr>
                                               	<th style="text-align:left;">Emp. No</th>
                                                <th style="text-align:left;">Name</th>
                                                <th style="text-align:left;">Emp. Status</th>
                                                <th style="text-align:left;">Request Type</th>
                                                 <th style="text-align:left;">Date Requested</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                         <c:forEach var="e" items="${reqlist}">
                                            <tr>
                                            
                                                <td>${e.empNum}</td>
                                               	<td>${e.fName}</td>
                                                <td>${e.empStatus}</td>
                                                <td>${e.reqType}</td>
                                                <td>${e.reqDate}</td>
                                                <td style="text-align:center;">
	                                            	<button class="btn btn-default btn-small">
										  			<i class="glyphicon glyphicon-eye-open"></i>
													</button>
	                                            	<button class="btn btn-success btn-small">
										  			<i class="glyphicon glyphicon-ok"></i>
													</button>
													<button class="btn btn-danger btn-small">
										  			<i class="glyphicon glyphicon-remove"></i>
													</button>
                                           		</td>
                                           		
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>	
                                </div>
                             </div>
                             
                             
                             <div class="col-lg-12 col-md-6 col-sm-6">
                       <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="list" data-size="16" data-c="#fff" data-hc="white">                 
                                    </i>
                                 	Requests
                                			<a class="btn-group btn-group-xs pull-right">
	                                            <button class="btn btn-primary" id="daterange-btn">
	                                                <i class="fa fa-calendar"></i>
	                                                &nbsp;Filter Date
	                                                <i class="fa fa-caret-down"></i>
	                                            </button>
                                            </a>
                                </h3>
                                       
                                
                            </div>
                            <div class="panel-body">
                               <table class="table table-striped table-responsive" id="table2">
                                 <thead>
                                           <tr>
                                               <th style="text-align:left;">Name</th>
                                                <th style="text-align:left;">Job Category</th>
                                                <th style="text-align:left;">Request Type</th>
                                                <th style="text-align:left;">Approver</th>
                                                <th style="text-align:left;">Status</th>
                                                <th></th>
                                            </tr>
                                    </thead>
                                     <tbody>
                           		    <tr>
											<td>Steven Jabs</td>
                                            <td>Administrative</td>
                                            <td>Schedule</td>
                                            <td>Jose Mari</td>
                                            <td>Approved</td>
                                             <td style="text-align: center">
	                                            	<button class="btn btn-default btn-small">
										  			<span><i class="fa fa-info-circle"></i>&nbsp;View</span>
													</button>
	                                         </td>
                         					
									</tr>
									
									 <tr>
											<td>Mark Sakerberg</td>
                                            <td>Part Time Faculty</td>
                                            <td>Schedule</td>
                                            <td>Jose Mari</td>
                                            <td>Disapproved</td>
                                             <td style="text-align: center">
	                                            	<button class="btn btn-default btn-small">
										  			<span><i class="fa fa-info-circle"></i>&nbsp;View</span>
													</button>
	                                         </td>
                         					
									</tr>
									
                                  </tbody>
                                  </table>
                                </div>	
                                </div>
                             </div>
                        
                        
                        
                <!--main content ends--> </section>
            <!-- content --> </aside>
        <!-- right-side --> </div>
        
      <%@include file="../includes/footer.jsp" %>
     
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
    <script src="${pageContext.request.contextPath}/resources/js/metisMenu.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
    
    
    
    
</body>
</html>