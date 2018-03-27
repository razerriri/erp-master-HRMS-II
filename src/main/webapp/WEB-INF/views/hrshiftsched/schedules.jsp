<!DOCTYPE html>
<html>
<head>
   
	<meta charset="UTF-8">
    <title>Schedules</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/select2/select2-bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/Buttons-master/css/buttons.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/buttons.css" />
	
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
                <h1>Schedules</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="livicon" data-name="dashboard" data-size="14" data-loop="true"></i>
                            Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="calendar" data-size="14" data-loop="true"></i>
                            Schedules
                        </a>
                    </li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                <!--main content-->
         
          <div class="col-lg-12 col-md-6 col-sm-6">
                       <div class="panel panel-plain filterable">
                            <div class="panel-heading">
                                <h3 class="panel-title" style="height:35px;">
                                    <i class="livicon" data-name="calendar" data-size="16" data-c="#000" data-hc="#555">                 
                                    </i>
                                 	  &nbsp;MANAGE SCHEDULES
                                 	  
                                 	   <div class="button-dropdown pull-right" data-buttons="dropdown">
                                                <a href="#" class="button button-border" style="height:35px; background-color:#418bca; color:#fff; border-color:#2980b9; ">
	                                                 <i class="fa fa-plus-circle"></i>&nbsp;
	                                                 Assign Schedule
	                                                 &nbsp;<i class="fa fa-caret-down"></i>
                                                </a>
                                                <ul class="button-dropdown-menu-below">
                                                	
                                                     <li class="button-dropdown-divider">
                                                        <a data-href="#regular" data-toggle="modal" data-target="#regular">Regular</a>
                                                    </li>
                                                    
                                                    <li class="button-dropdown-divider">
                                                    <a data-href="#part-time" data-toggle="modal" data-target="#part-time">Part Time</a>
                                          		    </li>
                                                    
                                                    <li class="button-dropdown-divider">
                                                    <a data-href="#admin" data-toggle="modal" data-target="#admin">Administrative</a>
                                                    </li>
                                                    
                                                    <li class="button-dropdown-divider">
                                              		<a data-href="#utilities" data-toggle="modal" data-target="#utilities">Designee</a>
                                                    </li>
                                                </ul>
                                        </div>
                                        
                               	 </h3>  
                            </div>
                            <div class="panel-body">
                           		
                                    <table class="table table-striped table-responsive" id="table1">
                                        <thead>
                                            <tr>
                                               	<th style="text-align:left;">Name</th>
                                                <th style="text-align:left;">Job Category</th>
                                                <th style="text-align:left;">Job Description</th>
                                                <th style="text-align:left;">Department</th>
                                                <th style="text-align:center;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Demonic Otsowa</td>
                                               	<td>Regular Faculty</td>
                                                <td>Professor X</td>
                                                <td>Faculty</td>
                                                  <td style="text-align: center">
	                                            	<button class="btn btn-default btn-small">
										  			<i class="glyphicon glyphicon-eye-open"></i>
													</button>
	                                            	
	                                            	<button class="btn btn-success btn-small">
										  			<i class="glyphicon glyphicon-edit"></i>
													</button>
	                                            	
                                           		</td>
                                            </tr>
                                    
                                        </tbody>
                                    </table>
                                </div>	
                                </div>
                             </div>
                             
                            
                             
                              
	<!--MODAL LEAVE REQUEST START-->
	  <form class="form-horizontal"  action="../resources/function/add-schedule.jsp" method="post" name="myForm" onsubmit="return checkform(this);">
		<div class="modal fade in" id="regular" tabindex="-1" role="dialog" aria-hidden="false" style="display:none">
        	<div class="modal-dialog modal-md">
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">
                       <i class="glyphicon glyphicon-plus-sign"></i> Add Schedule (Regular Faculty)</h4>
                    </div>
		            <div class="modal-body">
		            
		            
		            <fieldset>
                                 
                                 <section class="content">   
                                           <!--main content-->
                               	 <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                    <label for="validate-text">Select employee:</label>
                                  	<div class="input-group select2-bootstrap-prepend">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                        
                                        
                                           
                                        <select id="emp1" class="form-control select2">
                                       
                                        <option style="color: gray;" value="" disabled selected>Select employee</option>
                                       
										
                                            	    </select>
                                            	    
                                     
                                    </div>
                                    </div>
                                    
                                     <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                     <label for="validate-text">Schedule Time:</label>
                                           <div class="input-group col-md-12">
                                           <span class="input-group-addon">
                                                    <span class="fa fa-clock-o"></span>
                                            </span>
                             
												<input class="form-control" id="st" name="st" value="" readonly/>
                                 
                                           
                                   		 </div>
                                     </div>
                                     
                                     <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                        <label>Select Days:</label>
										<div class="input-group col-md-12">
                                           <span class="input-group-addon">
                                                    <span class="fa fa-calendar"></span>
                                            </span>
                                            <select id="days" multiple class="form-control select2">
		                                  		 <option>Monday</option>
		                                         <option>Tuesday</option> 	     
		                                         <option>Wednesday</option>	     
		                                 		 <option>Thursday</option>
		                                 		 <option>Friday</option>
		                                 		 <option>Saturday</option>
		                                 		 <option>Sunday</option>
                                       		 </select>
                                        </div>
                                        
                                        
                                        
                                    </div>
                                     
                                     <div class="form-group" style="margin-left:5px;">
                                     <label for="validate-text">Schedule Range:</label>
                                     
                                     <div class="row">
                                     	  <div class="col-md-6" style="margin-left:-15px;">
	                                           <div class="input-group">
	                                           <span class="input-group-addon">
	                                                    <span class="fa fa-calendar"></span>
	                                            </span>
	                                                <input class="form-control" type="date" id="cd" name="cd"/>
	                                             </div>
	                                             <p class="small">*start date</p>
                                            </div>
                                            
                                    
                                           <div class="col-md-6" style="margin-right:-5px;">
	                                           <div class="input-group">
	                                           <span class="input-group-addon">
	                                                    <span class="fa fa-calendar"></span>
	                                            </span>
	                                                <input class="form-control" type="date" id="cd" name="cd"/>
	                                            </div>
	                                            <p class="small">*end date</p>
                                            </div>
                                       </div> 
                                       
                                     </div>
                                     
                                     <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                     <label for="validate-text">Remarks:</label>
                                            <div class="input-group col-md-12">
                                                <textarea class="form-control" id="remarks" name="remarks" placeholder="Please enter remarks..." rows="2"></textarea>
                                            </div>
                                     </div>
                                
                                         <!--main content end-->
                                         
                                   
                                     </section>
                                     </fieldset>
		            
		            </div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-responsive btn-primary">Submit</button>
						<button type="reset" class="btn btn-responsive btn-danger">Reset</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	
		<!--MODAL LEAVE REQUEST START-->
	  <form class="form-horizontal"  action="resources/function/add-schedule.jsp" method="post" name="myForm" onsubmit="return checkform(this);">
		<div class="modal fade in" id="admin" tabindex="-1" role="dialog" aria-hidden="false" style="display:none">
        	<div class="modal-dialog modal-md">
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">
                        <i class="glyphicon glyphicon-plus-sign"></i>Add Schedule (Administrative)</h4>
                    </div>
		            <div class="modal-body">
		            
		            
		             <fieldset>
                               	 
                            	  <section class="content">   
                            	  
                            	 
                                           <!--main content-->
                               	 <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                    <label for="validate-text">Select employee:</label>
                                  	<div class="input-group select2-bootstrap-prepend">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                         <select id="emp3" class="form-control select2">
                                         <option style="color: gray;" value="" disabled selected>Select employee</option>
                                        
                                        <option></option>
                                    
                                        </select>
                                    </div>
                                    </div>
                                    
                                     <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                     <label for="validate-text">Schedule Time:</label>
                                           <div class="input-group col-md-12">
                                           <span class="input-group-addon">
                                                    <span class="fa fa-clock-o"></span>
                                            </span>
                                     <input class="form-control" id="st" name="st" value="" readonly/>
                                        
                                            </div>
                                     </div>
                                     
                                     <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                        <label>Select Days:</label>
                                        <select id="days1" multiple class="form-control select2">
                                   
										
                                            	    <option></option>
                                      
									
                                        </select>
                                    </div>
                                     
                                     <div class="form-group" style="margin-left:5px;">
                                     <label for="validate-text">Schedule Range:</label>
                                     
                                     <div class="row">
                                     	  <div class="col-md-6" style="margin-left:-15px;">
	                                           <div class="input-group">
	                                           <span class="input-group-addon">
	                                                    <span class="fa fa-calendar"></span>
	                                            </span>
	                                                <input class="form-control" type="date" id="cd" name="cd"/>
	                                             </div>
	                                             <p class="small">*start date</p>
                                            </div>
                                            
                                    
                                           <div class="col-md-6" style="margin-right:-5px;">
	                                           <div class="input-group">
	                                           <span class="input-group-addon">
	                                                    <span class="fa fa-calendar"></span>
	                                            </span>
	                                                <input class="form-control" type="date" id="cd" name="cd"/>
	                                            </div>
	                                            <p class="small">*end date</p>
                                            </div>
                                       </div> 
                                       
                                     </div>
                                     
                                     <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                     <label for="validate-text">Remarks:</label>
                                            <div class="input-group col-md-12">
                                                <textarea class="form-control" id="cd" name="cd" placeholder="Please enter remarks..." rows="2"></textarea>
                                            </div>
                                     </div>
                                
                                         <!--main content end-->
                                        
                                     </section> 
                                     
                                      </fieldset>
                                  
		            
		            </div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-responsive btn-primary">Submit</button>
						<button type="reset" class="btn btn-responsive btn-danger">Reset</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	
		<!--MODAL LEAVE REQUEST START-->
	  <form class="form-horizontal"  action="${pageContext.request.contextPath}/resources/function/add-schedule.jsp" method="post" name="myForm" onsubmit="return checkform(this);">
		<div class="modal fade in" id="part-time" tabindex="-1" role="dialog" aria-hidden="false" style="display:none">
        	<div class="modal-dialog modal-md">
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">
                        <i class="glyphicon glyphicon-plus-sign"></i>Add Schedule (Part Time Faculty)</h4>
                    </div>
		            <div class="modal-body">       
		            
		            	<fieldset>
                                 
                                 <section class="content">   
                                          <!--main content-->
                               	 <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                    <label for="validate-text">Select employee:</label>
                                  	<div class="input-group select2-bootstrap-prepend">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                       <select id="emp2" class="form-control select2">
                                       
                                        <option style="color: gray;" value="" disabled selected>Select employee</option>
                                    
                                            	     <option></option>
                                            	     
                                   
                                            	    </select>
                                    </div>
                                    </div>
                                     
                                       <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                     <label for="validate-text">Schedule Days:</label>
                                           <div class="input-group col-md-12">
                                           <span class="input-group-addon">
                                                    <span class="fa fa-calendar"></span>
                                            </span>
                                                <input class="form-control" id="cd" name="cd" readonly/>
                                            </div>
                                     </div>
                                    
                                      <div class="form-group" style="margin-left:5px;">
                                     <label for="validate-text">Scheduled Range:</label>
                                     
                                     <div class="row">
                                     	  <div class="col-md-6" style="margin-left:-15px;">
	                                           <div class="input-group">
	                                           <span class="input-group-addon">
	                                                    <span class="fa fa-calendar"></span>
	                                            </span>
	                                                <input class="form-control" type="date" id="cd" name="cd" readonly/>
	                                             </div>
	                                             <p class="small">*start date</p>
                                            </div>
                                            
                                    
                                           <div class="col-md-6" style="margin-right:-5px;">
	                                           <div class="input-group">
	                                           <span class="input-group-addon">
	                                                    <span class="fa fa-calendar"></span>
	                                            </span>
	                                                <input class="form-control" type="date" id="cd" name="cd" readonly/>
	                                            </div>
	                                            <p class="small">*end date</p>
                                            </div>
                                       </div> 
                                       
                                     </div>
                                    
                                     <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                     <label>Upload Document:</label><p/>
									 <label class="btn btn-primary">
										    Browse <input type="file" style="display:none">
									 </label>
									 <p/><small class="text-muted">Browse the supporting document for the schedule request.</small>
									 </div>
									 
									 <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                     <label for="validate-text">Remarks:</label>
                                            <div class="input-group col-md-12">
                                                <textarea class="form-control" id="cd" name="cd" placeholder="Please enter remarks..." rows="2"></textarea>
                                            </div>
                                     </div>
                                         <!--main content end-->
                                  
                                     </section> 
                                     
                                     </fieldset>
                            
		            
		             </div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-responsive btn-primary">Submit</button>
						<button type="reset" class="btn btn-responsive btn-danger">Reset</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	
	  <form class="form-horizontal"  action="${pageContext.request.contextPath}/resources/function/add-schedule.jsp" method="post" name="myForm" onsubmit="return checkform(this);">
		<div class="modal fade in" id="utilities" tabindex="-1" role="dialog" aria-hidden="false" style="display:none">
        	<div class="modal-dialog modal-md">
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">
                        <i class="glyphicon glyphicon-plus-sign"></i>Add Schedule (Designee)</h4>
                    </div>
		            <div class="modal-body">
		              
		             <section class="content">   
                                           <!--main content-->
                               	 <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                    <label for="validate-text">Select employee:</label>
                                  	<div class="input-group select2-bootstrap-prepend">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                        <select id="single-prepend-text" class="form-control select2">
                                 
                                         		   
                                        <option></option>
                                        
                                        
                                        </select>
                                    </div>
                                    </div>
                                     
                                     <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                        <label>Select Days:</label>
                                        <select multiple class="form-control select2">
                                    
                                            	    <option></option>
                                         
                                        </select>
                                    </div>
                                     
                                     <div class="form-group" style="margin-left:5px;">
                                     <label for="validate-text">Schedule Range:</label>
                                     
                                     <div class="row">
                                     	  <div class="col-md-6" style="margin-left:-15px;">
	                                           <div class="input-group">
	                                           <span class="input-group-addon">
	                                                    <span class="fa fa-calendar"></span>
	                                            </span>
	                                                <input class="form-control" type="date" id="cd" name="cd"/>
	                                             </div>
	                                             <p class="small">*start date</p>
                                            </div>
                                            
                                    
                                           <div class="col-md-6" style="margin-right:-5px;">
	                                           <div class="input-group">
	                                           <span class="input-group-addon">
	                                                    <span class="fa fa-calendar"></span>
	                                            </span>
	                                                <input class="form-control" type="date" id="cd" name="cd"/>
	                                            </div>
	                                            <p class="small">*end date</p>
                                            </div>
                                       </div> 
                                       
                                     </div>
                                     
                                      <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                     <label>Upload Document:</label><p/>
									 <label class="btn btn-primary">
										    Browse <input type="file" style="display:none">
									 </label>
									 <p/><small class="text-muted">Browse the supporting document for the schedule request.</small>
									 </div>
                                     
                                     <div class="form-group" style="margin-left:5px; margin-right:5px;">
                                     <label for="validate-text">Remarks:</label>
                                            <div class="input-group col-md-12">
                                                <textarea class="form-control" id="cd" name="cd" placeholder="Please enter remarks..." rows="2"></textarea>
                                            </div>
                                     </div>
                                
                                         <!--main content end-->
                                     
                                     </section> 
                                     
		            </div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-responsive btn-primary">Submit</button>
						<button type="reset" class="btn btn-responsive btn-danger">Reset</button>
					</div>
				</div>
			</div>
		</div>
	</form>
            

		       <!--row end-->
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/Buttons-master/js/vendor/scrollto.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/Buttons-master/js/main.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/Buttons-master/js/buttons.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/tags/dist/bootstrap-tagsinput.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
    
    
    
</body>
</html>