<!DOCTYPE html>
<html>
<head>
	<%@include file="../includes/head.jsp" %>
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
                        <a href="#">System Configuration</a>
                    </li>
                    <li class="active">Training Competencies</li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                
               <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet box default">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="edit" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Training Competencies 
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-toolbar">
                                    <div class="btn-group">
                                        <button id="btn_add_cluster" class=" btn btn-custom" data-toggle="modal" data-href=#modaladd" href="#modaladd">
                                            Add New
                                            <i class="fa fa-plus"></i>
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
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">Training Title</th>
												<th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">Cluster</th>
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">Competency</th>
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">Type</th>             
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">Level</th>
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:180px;">Actions</th>             
                                            </tr>
                                        </thead>
                                        <tbody style="font-size:80%;">
                                            <c:forEach var="c" items="${trainingcompetencylist}">
                                            <tr role="row" class="odd">                              
                                                <td>${c.training_name}</td>
                                                <td>${c.cluster_name}</td>                                               
                                                <td>${c.competency_name}</td>
                                                <td>${c.competency_type}</td>
                                                <td>${c.required_level}</td>
                                                <td align="center">                                   
                                                    <a class="btn btn-md btn-warning" training-competency-id="${c.trainingcompetency_id}" competency-id="${c.competency_id}" required-level="${c.required_level}" data-toggle="modal" data-target="#modalupdate"><span class="glyphicon glyphicon-edit"></span> Edit</a>       
                                            		<a class="btn btn-md btn-danger" training-competency-id="${c.trainingcompetency_id}" training-id="${c.training_id}" data-toggle="modal" data-target="#modaldelete"><span class="glyphicon glyphicon-remove"></span> Delete</a>    	
                                                </td>
                                            </tr>
											</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                        </div>
                    </div>
                </div>
				
				<!--- ADD MODAL -->
            	<form:form class="form-horizontal" method="post" action="competency/save" modelAttribute="competency" id="saveForm">
                <div class="modal fade in" id="modaladd" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Competency Status Information</h4>
                            </div>
                           	    <div class="row">
                           	    <br/>
                           	     <c:forEach var="c" items="${training_id}">                                  
                           		 <form:hidden path="training_id" id="trainingid"  value="${c.training_id}"></form:hidden>                  
								</c:forEach>
								<div class="col-md-12">        
										<div class="form-group">
											<label for="e1" class="col-md-3  control-label">
												Competency
											</label>
											<div class="col-md-9">											
												<form:select path="competency_id" id="competencyid" name="competencyid" class="form-control select2">
												  <c:forEach items="${competencylist}" var="c">
											            <form:option value="${c.competency_id}">${c.competency_name}</form:option>
											      </c:forEach>
												</form:select>
											</div>
										</div>
									</div>
                                </div>
                                <div class="row">
									<div class="col-md-12">        
										<div class="form-group">
											<label for="e1" class="col-md-3  control-label">
												Required level
											</label>
											<div class="col-md-9">
												<form:select path="required_level" id="requiredlevel" name="requiredlevel" class="form-control select2">
													<form:option value="Basic">Basic</form:option>
													<form:option value="Intermediate">Intermediate</form:option>
													<form:option value="Advanced">Advanced</form:option>
													<form:option value="Superior">Superior</form:option>		
												</form:select>
											</div>
										</div>
									</div>
                                </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                </form:form>
                <!-- END modal-->
			
            	<!---EDIT MODAL -->
            	<form:form class="form-horizontal" method="post" action="competency/update" modelAttribute="competency" id="updateForm">
                <div class="modal fade in" id="modalupdate" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Competency Status Information</h4>
                            </div>
                            <div class="modal-body">
                            						 
                         		<c:forEach var="c" items="${training_id}">                                  
                           		 <form:hidden path="training_id" id="trainingid"  value="${c.training_id}"></form:hidden>                  
								</c:forEach>
								
						 		<form:hidden path="trainingcompetency_id" id="trainingcompetencyid" name="trainingcompetencyid" ></form:hidden>
                                <div class="row">
								<div class="col-md-12">        
										<div class="form-group">
											<label for="e1" class="col-md-3  control-label">
												Competency
											</label>
											<div class="col-md-9">
												<form:select path="competency_id" id="competencyid" name="competencyid" class="form-control select">
												
												  <c:forEach items="${competencylist}" var="c">
											            <form:option value="${c.competency_id}">${c.competency_name}</form:option>
											      </c:forEach>
												</form:select>
											</div>
										</div>
									</div>
                                </div>
                                <div class="row">
									<div class="col-md-12">        
										<div class="form-group">
											<label for="e1" class="col-md-3  control-label">
												Required level
											</label>
											<div class="col-md-9">
												<form:select path="required_level" id="requiredlevel" name="requiredlevel" class="form-control select">
													<form:option value="Basic">Basic</form:option>
													<form:option value="Intermediate">Intermediate</form:option>
													<form:option value="Advanced">Advanced</form:option>
													<form:option value="Superior">Superior</form:option>		
												</form:select>
											</div>
										</div>
									</div>
                                </div>
                               
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                </form:form>
                <!-- END modal-->

                 <div class="modal fade in" id="modaldelete" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-md">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p>Would you like to delete this competency status ?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Cancel</button>
                                <button id="deletebutton" type="button" data-dismiss="modal" class="btn btn-primary">Yes</button>
                            </div>
                        </div>
                    </div>
                </div>
           
            </section>
            <!-- content -->
        </aside>
        <!-- right-side -->
    </div>
    <!-- ./wrapper -->
    <%@include file="../includes/footer.jsp" %> 
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
    
    <script type="text/javascript">
	   
	    $('#modaldelete').on('show.bs.modal', function (e) {
        	  // get information to update quickly to modal view as loading begins
        	  var opener=e.relatedTarget;//this holds the element who called the modal
        	   
        	  //we get details from attributes
        	  var trainingcompetencyid=$(opener).attr('training-competency-id');
        	  var trainingid=$(opener).attr('training-id');
        	  
        	  document.getElementById("deletebutton").onclick = function () {
      	    	window.location = 'competency/delete/'+trainingcompetencyid+'/'+trainingid;
      	   	  };
      	    
        	});
	</script>
	<script type="text/javascript">
	    
	    $('#modalupdate').on('show.bs.modal', function (e) {
        	  // get information to update quickly to modal view as loading begins
        	  var opener=e.relatedTarget;//this holds the element who called the modal
        	   
        	  //we get details from attributes
        	  var trainingcompetencyid=$(opener).attr('training-competency-id');
        	  var competencyid=$(opener).attr('competency-id');
        	  var requiredlevel=$(opener).attr('required-level');

        	  //set what we got to our form
       	    $('#updateForm').find('[id="trainingcompetencyid"]').val(trainingcompetencyid);
            $('#updateForm').find('[id="competencyid"]').val(competencyid);
            $('#updateForm').find('[id="requiredlevel"]').val(requiredlevel);
          	
        	});
	    
	</script>
</body>
</html>
