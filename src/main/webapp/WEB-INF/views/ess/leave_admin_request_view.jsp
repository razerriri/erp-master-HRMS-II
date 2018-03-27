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

<%@include file="../includes/sidebar-employee.jsp" %>

<!-- Right side column. Contains the navbar and content of the page -->
		<div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Leave Requisition</h1>
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
                                        <button class="btn btn-primary" data-toggle="modal" data-href="#modalLeaveReq" href="#modalLeaveReq">
                                            Request Leave<i class="fa fa-plus"></i>
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
                                    <table class="table table-striped table-bordered table-hover dataTable" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:5%">Date Applied</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Leave Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Points
                                            : activate to sort column ascending" style="width: 5%;">Start Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Notes
                                            : activate to sort column ascending" style="width: 5%;">End Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Edit
                                            : activate to sort column ascending" style="width: 5%;">Duration</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Reason</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 10%;">Remarks</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 5%;">Status</th>
                                            <th style="width: 15%;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                        <c:forEach var="req" items="${listRequest}">
	                                        <tr role="row">
	                                        	<td>${req.leaveFile}</td>
	                                        	<td>${req.leaveType}</td>
	                                        	<td>${req.leaveStart}</td>
	                                        	<td>${req.leaveEnd}</td>
	                                        	<td>${req.leaveDays}</td>
	                                        	<td>${req.leaveReason}</td>
	                                        	<td>${req.leaveRemarks}</td>
	                                        	<td>${req.leaveStatus}</td>
	                                        	<td style="text-align: center">
													<a href="#" class="btn btn-success">
													<span class="glyphicon glyphicon-pencil"></span> 
													</a>
												</td>
												<td>
	                                                <a href="#" class="btn btn-danger" onclick="confirmDelete()">
											    	<span class="glyphicon glyphicon-trash"></span> 
											        </a>
                                           		</td>
	                                        </tr>
	                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END TABLE-->
                                <%@ include file="request_modal.jsp" %>
                                
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

<!-- <script>
  		function confirmDelete(x){
  			if(confirm("Are you sure you want to delete this leave request?") == true){
  				window.location = 'erp/leaveRequest'+ x;
  			}
  			else{
  				
  			}
  			}
  		
		$('#modalUpdateReq').on('show.bs.modal', function (e) {
	  		// get information to update quickly to modal view as loading begins
	  		var opener=e.relatedTarget;//this holds the element who called the modal
     	   
		//we get details from attributes
		var req_id=$(opener).attr('req_id');
		var emp_id=$(opener).attr('emp_id');
		var lve_t=$(opener).attr('lve_t');
		var lve_sd=$(opener).attr('lve_sd');
		var lve_ed=$(opener).attr('lve_ed');
		//var lve_nd=$(opener).attr('lve_nd');
	  	var lve_rs=$(opener).attr('lve_rs');
	  	var lve_rm=$(opener).attr('lve_rm');
	  	var lve_s=$(opener).attr('lve_s');
		var lve_fd=$(opener).attr('lve_fd');
	  	  	  

		//set what we got to our form
	  	$('#updateReqForm').find('[id="u_reqEmpID"]').val(emp_id);
	  	$('#updateReqForm').find('[id="u_lveType"]').val(lve_t);
	  	$('#updateReqForm').find('[id="u_sDate"]').val(lve_sd);
	  	$('#updateReqForm').find('[id="u_eDate"]').val(lve_ed);
		//$('#updateReqForm').find('[id="u_leaveDuration"]').val(lve_nd);
	  	$('#updateReqForm').find('[id="u_leaveReason"]').val(lve_rs);
	  	$('#updateReqForm').find('[id="u_leaveRemarks"]').val(lve_rm);
	  	$('#updateReqForm').find('[id="u_leaveStatus"]').val(lve_s); 
       	$('#updateReqForm').find('[id="u_fileDate"]').val(lve_fd);
	  	
	  	
     	});
  	</script>-->
</body>
</html>


		
