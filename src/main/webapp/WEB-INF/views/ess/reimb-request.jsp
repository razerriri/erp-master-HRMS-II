<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<meta charset="UTF-8">
	<%@ include file="../includes/head.jsp" %>
    <title>${viewTitle}</title>
</head>
<body class="skin-josh">
<%@ include file="../includes/header.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@include file="../includes/sidebar.jsp" %>

<!-- Right side column. Contains the navbar and content of the page -->
		<div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Reimbursement Requisition</h1>
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
						<div class="panel panel-white">
							<!-- PANEL BODY START -->
                            <div class="panel-body">
                                <div class="table-toolbar">
                                    <div class="btn-group">
                                        <button class="btn btn-primary" data-toggle="modal" data-href="#modalReimb" href="#modalReimb">
                                            Request Reimbursement<i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                    <div class="btn-group pull-right">
                                        <button class="btn dropdown-toggle btn-custom" data-toggle="dropdown">
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
                                <div id="sample_editable_1_wrapper" class="">
                                    <table class="table table-striped table-bordered table-hover dataTable" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Date Applied</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 10%;">Expense Total</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 5%;">Status</th>
                                            <th style="width: 15%;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                        <!--<c:forEach var="req" items="${listRequest}">-->
	                                        <tr role="row">
	                                        	<td>req.leaveFile}</td>
	                                        	<td>req.leaveType}</td>
	                                        	<td>req.leaveStart}</td>
	                                        	<td>
	                                        		<button type="button" class="btn btn-xs btn-primary">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
													<button type="button" class="btn btn-xs btn-danger">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</td>
	                                        </tr>
	                                        <!--</c:forEach>-->
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END TABLE-->
                                <%@ include file="modal-reimb.jsp" %>
                            </div>
							<!-- PANEL BODY END -->
                        </div>
                    </div>
                </div>
            </section>
		</aside>
        <!-- right-side -->
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
	</div>
	
<%@include file="../includes/footer.jsp" %> 
</body>
</html>
