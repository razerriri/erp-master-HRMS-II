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
                        <a href="">
                            <i class="livicon" data-name="home" data-size="18" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="">Setup</a>
                    </li>
                    <li class="active">Cluster Competencies</li>
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
                                    Cluster Competencies
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-toolbar">
                                    <div class="btn-group">
                                        <button id="btn_add_cluster" class=" btn btn-custom" data-toggle="modal" data-href="#modaladd" href="#modaladd">
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
                                                
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending">Cluster Name</th>
                                        	    
                                                <th align="center" class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Notes
                                            : activate to sort column ascending" style="width: 250px;">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<c:forEach var="c" items="${clusterlist}">
                                            <tr role="row" class="odd">
                                               
                                                <td>${c.cluster_name}</td>
                                                <td align="center">
                                                	<a class="btn btn-md btn-info" onClick="window.location = 'cluster/view/'+${c.cluster_id};"><span class="glyphicon glyphicon-search"></span> View</a>
                                                
                                                    <a class="btn btn-md btn-warning" cluster-id="${c.cluster_id}" cluster-name="${c.cluster_name}" data-toggle="modal" data-target="#modalupdate"><span class="glyphicon glyphicon-edit"></span> Edit</a>
                                                
                                             		<%-- <a class="btn btn-md btn-danger" onclick="confirmDelete(${c.cluster_id})"><span class="glyphicon glyphicon-remove"></span> Delete</a>
                                            		 --%>
                                            		<a class="btn btn-md btn-danger" cluster-id="${c.cluster_id}" data-toggle="modal" data-target="#modaldelete"><span class="glyphicon glyphicon-remove"></span> Delete</a>
                                                
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
				<form:form action="cluster/save" modelAttribute="cluster" method="post">
					<div class="modal fade in" id="modaladd" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
						<div class="modal-dialog modal-md-12">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">Cluster Information</h4>
								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-md-12">                 
										   <div class="form-group">
												<label class="col-md-3 control-label" for="name">Cluster Name</label>
												<div class="col-md-9">
													<fieldset>
														<form:input path="cluster_name" id="clustername" name="clustername" type="text"  placeholder="Type cluster name" class="form-control"/>
													</fieldset>
												</div>
										   </div>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" data-dismiss="modal" class="btn">Close</button>
									<button type="submit" name="submit" class="btn btn-primary">Save changes</button>
								</div>
							</div>
						</div>
					</div>
				</form:form>
               
            	<form:form class="form-horizontal" method="post" action="cluster/update" modelAttribute="cluster" id="updateForm">
           	    <div class="modal fade in" id="modalupdate" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-md-12">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Cluster Information</h4>
                            </div>
                            <div class="modal-body">
                               
                               	<form:hidden path="cluster_id" id="clusterid"></form:hidden>                  
							
                                <div class="row">
                                    <div class="col-md-12">                 
                                       <div class="form-group">
	                                        <label class="col-md-3 control-label" for="name">Cluster Name</label>
	                                        <div class="col-md-9">
	                                            <fieldset>
	                                            	<form:input path="cluster_name" id="clustername" name="clustername" type="text" placeholder="Your name" class="form-control"/>
												</fieldset>
	                                        </div>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </div>
                    </div>
                </div>
                </form:form>
                

           	    <div class="modal fade in" id="modaldelete" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-md">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p>Would you like to delete this cluster ?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Cancel</button>
                                <button id="deletebutton" type="button" data-dismiss="modal" class="btn btn-primary">Yes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END modal-->

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
    <!-- end of page level js -->
    <script type="text/javascript">
	   
	    $('#modaldelete').on('show.bs.modal', function (e) {
        	  // get information to update quickly to modal view as loading begins
        	  var opener=e.relatedTarget;//this holds the element who called the modal
        	   
        	  //we get details from attributes
        	  var clusterid=$(opener).attr('cluster-id');
        	  
        	  document.getElementById("deletebutton").onclick = function () {
      	    	window.location = 'cluster/delete/'+clusterid;
      	   	  };
      	    
        	});
	</script>
    <script>
         function confirmDelete(x){
         	if(confirm("Are you sure you want to delete this cluster?") == true){
         		window.location = 'cluster/delete/'+x;
         	}
         	else{
         		
         	}
         }
         
         $('#modalupdate').on('show.bs.modal', function (e) {
          	  // get information to update quickly to modal view as loading begins
          	  var opener=e.relatedTarget;//this holds the element who called the modal
          	   
          	  //we get details from attributes
          	  var clusterid=$(opener).attr('cluster-id');
          	  var clustername=$(opener).attr('cluster-name');

          	  //set what we got to our form
         	  $('#updateForm').find('[id="clusterid"]').val(clusterid);
              $('#updateForm').find('[id="clustername"]').val(clustername);
            	
          	});
      </script>
     
</body>
</html>
