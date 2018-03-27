<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>

<head>
   
    <%@ include file ="../includes/head.jsp"%>  
   
</head>

<body class="skin-josh">
    
    <header class="header">
 	<%@ include file="../includes/header.jsp"%>
    </header>
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
        
        <!-- Left side column. contains the logo and sidebar -->
		<%@ include file="../includes/sidebar.jsp"%>
        <!-- left-side -->
       
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1></h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="/erp/hrms/newhireonboard/nhindex/">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Dashboard
                        </a>
                    </li>
                    <li class="active">
                        <a href="/erp/hrms/newhireonboard/newhire/">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							New Hire
                        </a>
                    </li>
                    <li class="active">
                        <a href="/erp/hrms/newhireonboard/checklist/">
                            <i class="livicon" data-name="list-ul" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Checklist
                        </a>
                    </li>
                </ol>
            </section>
                <div class="row">
                     <div class="col-md-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet box primary">
                            <div class="portlet-body">
                                <div class="table-toolbar">
                                    <div class="btn-group">
                                        <a class="btn btn-primary btn-large" data-toggle="modal" data-href="#responsive" href="#responsive" style="float: right">Add New Hire <i class="fa fa-plus"></i></a>
                                    </div>
                                    <div class="btn-group pull-right">
                                        <button class="btn dropdown-toggle btn-primary" data-toggle="dropdown">
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
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">New Hire ID</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Employee Number
                                            : activate to sort column ascending" style="width: 222px;">Employee Number</th>
                                              	<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Name
                                            : activate to sort column ascending" style="width: 222px;">Name</th>
                                             	<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Birthdate
                                            : activate to sort column ascending" style="width: 222px;">Date of Birth</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Contact Number
                                            : activate to sort column ascending" style="width: 222px;">Contact Number</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Email Address
                                            : activate to sort column ascending" style="width: 222px;">Email Address</th>
                                            	<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Date Hired
                                            : activate to sort column ascending" style="width: 222px;">Date Hired</th>
                                            	<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Hiring Manager
                                            : activate to sort column ascending" style="width: 222px;">Hiring Manager</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Position Title
                                            : activate to sort column ascending" style="width: 222px;">Job</th>
                                            	<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Department
                                            : activate to sort column ascending" style="width: 222px;">Department</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Appointment status
                                            : activate to sort column ascending" style="width: 222px;">Appointment Status</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Status
                                            : activate to sort column ascending" style="width: 222px;">Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
 								            <tr>
 								            	<td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                	<a href="a_nh_profile.jsp">
                                                	<i class="livicon" data-name="info" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view new hire"></i>
                                           			</a>
                                            		<a href="" data-toggle="modal" data-target="#delete_confirm">
                                                	<i class="livicon" data-name="user-remove" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete new hire"></i>
                                            		</a>
                                            		<a href="">
                                                	<i class="livicon" data-name="pen" data-size="18" data-loop="true" data-c="#FF4500" data-hc="#f56954" title="edit new hire"></i>
                                            		</a>
                                                </td>
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                        </div>
                    </div>
                <!--- responsive model -->
                <div class="modal fade in" id="responsive" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Add New Hire</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                	<form class="form-horizontal"  action="../function/add_nh.jsp" method="post" name="myForm" onsubmit="return checkform(this);">
                          			<fieldset>
                                    	<div class="col-md-12">
                                           <div class="form-group">
										      <label class="col-md-3 control-label" for="position">Employee Info ID</label>
										      <div class="col-md-6">
										      <input  id="nh_empid"  name="nh_empid" type="number" class="form-control required">
										      </div>
									       </div>
									       <div class="form-group">
										      <label class="col-md-3 control-label" for="name">Hiring Manager</label>
										      <div class="col-md-6">
										      <input id="nh_hrmgr" name="nh_hrgmgr" type="text" class="form-control required">
										      </div>
									       </div>
                                    	   <div class="form-group">
										      <label class="col-md-3 control-label" for="position">Job ID</label>
										      <div class="col-md-6">
										      <input  id="nh_jobid"  name="nh_jobid" type="number" class="form-control required">
										      </div>
									       </div>
                                           <div class="form-group">
										      <label class="col-md-3 control-label" for="appointment">Appointment Status</label>
										      <div class="col-md-6">
										          <select class="form-control required" id="nh_as" name="nh_as">
										              <option>On-Probation</option>
										              <option>Permanent</option>
										              <option>Temporary</option>  
										              <option>Contractual</option>
										              <option>Part-Time</option>
										              <option>Terminated</option>  
										              </select>
										      </div>
									       </div>
									       <div class="form-group">
										      <label class="col-md-3 control-label" for="status">Status</label>
										      <div class="col-md-6">
										          <select class="form-control required" id="nh_status" name="nh_status">
										              <option>On-Going</option>
										              <option>Completed</option>  
										              <option>Terminated</option>
										          </select>
										      </div>
									       </div>
									       <div class="form-group">
										      <div class="col-md-offset-3 col-md-12">
								              <input id="acceptTerms" name="acceptTerms" type="checkbox" class="required">
											  <label for="acceptTerms">I agree to the Terms and Conditions</label>
										      </div>
									        </div>  
                                    	</div>
                            			<div class="modal-footer">  
                                			<button type="button" class="btn btn-primary">Save</button>
                                			<button type="button" data-dismiss="modal" class="btn btn-danger">Cancel</button>
                                			<button type="button" class="btn btn-success">Reset</button>
                            			</div>
                                    </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END modal-->
            </div>
        </aside>
        <!-- right-side -->
    </div>
    
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
 	
 	<%@ include file ="../includes/footer.jsp"%>  
 	
</body>
</html>
