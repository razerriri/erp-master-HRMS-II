<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="../includes/head.jsp" %>
    <title>${viewTitle}</title>
<body class="skin-josh">
<%@ include file="../includes/header.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@include file="../includes/sidebar.jsp" %>
	
        <!-- Right side column. Contains the navbar and content of the page -->
		<div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Leave Settings</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="resources/#">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Human Resources Management System
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
                <!-- Second Data Table -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-white panel-border">
                            <div class="panel-body">
                                
									<div class="table-toolbar">
										<button class="btn btn-primary" data-toggle="modal" data-href="#mAddLeave" href="#mAddLeave">
											Add Leave Type
											<i class="fa fa-plus"></i>
										</button>
									</div>
									<div id="sample_editable_1_wrapper">
										<table class="table table-striped table-bordered table-advance table-hover" id="table1" role="grid">
											<thead>
												<tr role="row">
													<th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:15%">Leave Name</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Full Name
												: activate to sort column ascending" style="width: 5%;">Code</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Points
												: activate to sort column ascending" style="width: 10%;">Type</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Delete
												: activate to sort column ascending" style="width: 10%;">Leave Period</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Edit
												: activate to sort column ascending" style="width: 20%;">Accrue Date</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Delete
												: activate to sort column ascending" style="width: 10%;">Leave Count</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Delete
												: activate to sort column ascending" style="width: 12%;">Action</th>
											</thead>
											<tbody>
												<c:forEach var="lve" items="${listLeave}">
		                                        <tr>
		                                        	<td>${lve.leaveName}</td>
		                                        	<td>${lve.leaveCode}</td>
		                                        	<td>${lve.leaveType}</td>
		                                        	<td>${lve.leavePeriod}</td>
		                                        	<td>${lve.leaveAccrue}</td>
		                                        	<td>${lve.leaveCount}</td>
		                                        	<td>
		                                        		<button type="button" class="btn btn-xs btn-primary">
															<span class="fa fa-eye"></span>
														</button>
														<button type="button" class="btn btn-xs btn-default">
															<span class="fa fa-pencil"></span>
														</button>
														<button type="button" class="btn btn-xs btn-danger">
															<span class="fa fa-trash"></span>
														</button>
													</td>
		                                        </tr>
		                                        </c:forEach>
											</tbody>
										</table>
									</div>
									
								<%@ include file="setup_modals.jsp" %>
												
							</div>
						</div>
					</div>
				</div>
            </section>
		</aside>
        <!-- right-side -->
    <a id="back-to-top" href="resources/#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
	</div>
    
<%@include file="../includes/footer.jsp" %> 
<script type="text/javascript">
$(document).ready(function() {
    $('#selectRole').attr('disabled','disabled');        
    $('select[name="selectApp"]').on('change',function(){
    var  others = $(this).val();
        if(others == "Role"){           
        $('#selectRole').removeAttr('disabled');          
         }else{
         $('#selectRole').attr('disabled','disabled'); 
        }  

      });
    });
</script>
</body>
</html>
