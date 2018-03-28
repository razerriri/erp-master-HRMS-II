<!DOCTYPE html>
<html>
<head>
    <%@include file="../includes/head.jsp" %>
	<!-- end of global css -->    
    <!--page level css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/select2.css" />

    <link href="${pageContext.request.contextPath}/resources/vendors/modal/css/component.css" rel="stylesheet" />
	
	<link href="${pageContext.request.contextPath}/resources/vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/select2/select2-bootstrap.css" />
    <!--end of page level css-->
</head>

<body class="skin-josh">
    <head>
         <%@include file="../includes/header.jsp" %>
      </head>
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <%@include file="../includes/sidebar.jsp" %>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                 <h1><i class="livicon" data-name="gears" data-size="25" data-loop="true"></i> Competency Management</h1>
				 <ol class="breadcrumb">
                    <li>
                        <a href="${pageContext.request.contextPath}/resources/index.html">
                            <i class="livicon" data-name="home" data-size="18" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="#">Report</a>
                    </li>
                    <li class="active">Employee Competency</li>
                </ol>
            </section>
            <!--section ends-->
        
        
         <section class="content">
                
               <div class="row">
			   
                    <div class="col-md-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box default" style="height: 100%; overflow: auto;">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="search" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Search Employee
                                </div>
                            </div>
							
                            <div class="portlet-body">
                                 <form:form class="form-horizontal" method="post" action="ec-report/search" modelAttribute="competency" id="searchForm">
                
								<div class="form-group" style="height: 100%; width:95%; overflow: auto; padding-left:65px;">
								 <br/> <br/>
                                    <label for="single-append-text" class="control-label">
                                        Employee Name
                                    </label>
                                     <p></p>
                                    <div class="input-group select2-bootstrap-append">
                                         <form:select path="employee_id" id="employeeid" name="employeeid" class="form-control select2 ">											
										  <c:forEach items="${employeelist}" var="c">
									            <form:option value="${c.employee_id}">${c.employee_name}</form:option>
									      </c:forEach>
										</form:select>
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="submit" data-select2-open="single-append-text">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                    <br/> <br/> <br/> <br/> <br/> <br/>  <br/> <br/> <br/> <br/> <br/> <br/>  <br/> <br/> <br/> <br/> <br/> <br/>  <br/> <br/> <br/> <br/> <br/> <br/>
                                      
                                </div>
								<%-- <div class="form-group" style="height: 100%;width:95%; overflow: auto; padding-left:65px;">
                                    <label for="single-append-text" class="control-label">
                                        Target Job
                                    </label>
                                    <div class="input-group select2-bootstrap-append">
                                        <form:select path="job_id" id="jobid" name="jobid" class="form-control select2" >											
										  <c:forEach items="${joblist}" var="c">
									            <form:option value="${c.job_id}">${c.job_name}</form:option>
									      </c:forEach>
										</form:select>
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="submit" data-select2-open="single-append-text">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                </div> --%>
                             	</form:form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- END modal-->

            </section>
               </aside>
        
		<!-- right-side -->
    </div>
        <!-- right-side -->
    
    <!-- ./wrapper -->
	<%@include file="../includes/footer.jsp" %> 
    <!-- end of global js -->
    <!-- begining of page level js --> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/select2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-editable.js"></script>

    <script src="${pageContext.request.contextPath}/resources/vendors/modal/js/classie.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/modal/js/modalEffects.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
	
	<script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
   
    <!-- end of page level js -->
</body>
</html>
