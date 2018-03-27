<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <%@ include file="../includes/head.jsp"%> 
    <title>App Pooling - Administrative </title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
</head>

<body class="skin-josh">
	<%@ include file="../includes/header.jsp"%> 
	<%@ include file="../includes/sidebar.jsp"%>    
	 
<div class="wrapper row-offcanvas row-offcanvas left">
<aside class="right-side">
        
            <!-- Main content -->
            <section class="content-header">
                <h1>Applicant Management System</h1>
			<ol class="breadcrumb">
                    <li class="active">
                        <a href="AppMgt.html">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Home
                        </a>
                    </li>
                    <li class="active">
                        <a href="AdminPost.html">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Administrative Position
                        </a>
                    </li>
            </ol>
			<br>
			
                <div class="row">
                    <div class="col-lg-15">
                        <div class="panel panel-white filterable">
                            <div class="panel-heading clearfix">
                               
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="users" data-size="16" data-loop="true" data-c="#333" data-hc="white"></i>
                                    Applicant Pool 
                                    </div>
                                </div>
								
                                <div>

                                <div class="pull-right"><a href="#" class="btn btn-success" data-toggle="modal" data-target="#modaladd"><span style="padding-top: 20px;" class="glyphicon glyphicon-plus"></span> Add Applicant</a></div></div>
                            </div>
							
							<div class="col-md-10 col-sm-12 table1_filter" id="example1_length">
							<label>
							<br>Sort By:&nbsp;
							<select class="form-control" style="width: 90%;margin-right:15px">                 
							
							<option>Status</option>
							</select>
							</label>
							</div>
							
							
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>

                                            
                                            
                                            <th style="text-align: center;">Applicant Name</th>
                                            <th style="text-align: center;">Date Applied</th>
							
											<th style="text-align: center;">Position Title</th>
											<th style="text-align: center;">Status</th>
											<th style="text-align: center;">Action</th>
                                        </tr>
                                    </thead>
									
                                    <tbody>
                                        
                                       <tr>
										
                                            <td>Bella Johnston</td>
											<td>August 29, 2017</td>
											
											<td>Accounting Clerk</td>
											<td>Ongoing</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "#"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
										<tr>
									
                                            <td>Joan Murray</td>
											<td>September 5, 2017</td>
										
											<td>Instructor II</td>
											<td>Completed</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "#"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
										<tr>
											
                                            <td>Dorothy Edmunds</td>
											<td>September 25, 2017</td>
											
											<td>Electrician</td>
											<td>Ongoing</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "newhireprofile.html"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
										<tr>
											
                                            <td>Jonathan Turner</td>
											<td>October 15, 2017</td>
											
											<td>University Prof</td>
											<td>Ongoing</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "#"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
										<tr>
											
                                            <td>Victor Rees</td>
											<td>October 25, 2017</td>
											
											<td>Asst. Prof. 1</td>
											<td>Completed</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "#"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
										<tr>
											
                                            <td>Nicola	Clark</td>
											<td>October 28, 2017</td>
											
											<td>Chaffeur</td>
											<td>Ongoing</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "#"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
										<tr>
											
                                            <td>James Smith</td>
											<td>November 2, 2017</td>
										
											<td>Professor III</td>
											<td>Completed</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "#"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
										<tr>
											
                                            <td>Nathan	Parr</td>
											<td>November 11, 2017</td>
											
											<td>College Prof</td>
											<td>Ongoing</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "#"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
										<tr>
										
                                            <td>Adrian	Wallace</td>
											<td>November 19, 2017</td>
										
											<td>Asst. Prof. IV</td>
											<td>Completed</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "#"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
										<tr>

                                            <td>Elizabeth	Randall</td>
											<td>December 7, 2017</td>
											
											<td>Asst. Registration Officer</td>
											<td>Ongoing</td>
											<td>
											<center>
											<button type="button" class="btn btn-primary"><a href= "#"><i class="glyphicon glyphicon-eye-open" title="View Applicant Profile"></i></a></button>
											<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-pencil" title="Edit"></i></button>
											<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash" title="Deactivate"></i></button>
											</center>
                                            </td>
                                        </tr>
										
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
				
                         <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    <i class="fa fa-plus"></i>
                                                 Applicant Details
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                    
                                                <form class="form-horizontal">
                                                <fieldset>

                                                <!-- Form Name -->
                                                <legend>Add Applicant</legend>

                                    
												
                                               <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Applicant Name:</label>  
                                                  <div class="col-md-6">
                                                  <input class="form-control" id="" type="text" placeholder="Full Name" readonly >
                                                  </div>
                                                </div>
												
												<div class="form-group">
													<label class="col-md-4 control-label" for="dateofbirth">Date of Application:</label>
													<div class="col-md-6">
													<div class="input-group">
													<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
													</div>
													<input type="date" class="form-control required date" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
													</div>
												</div>
												</div>
												
										
												
												<div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Position Title:</label>  
                                                  <div class="col-md-6">
                                                  <input class="form-control" id="disabledInput" type="text" placeholder="Position Title">
                                                  </div>
                                                </div>
                                               
												
												<div class="form-group">
													<label class="col-md-4 control-label" for="dept">Status:</label>
													<div class="col-md-6">
													<select id="dept" name="dept" class="form-control">
													<option value="1">Ongoing</option>
													<option value="2">Completed</option>
											
                                                    </select>
                                                    </div>
                                                </div>
                                                    
                                                
                                                    
                                                
                                                <!-- Button (Double) -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  <div class="col-md-8">
                                                   
                                                  </div>
                                                </div>

                                                </fieldset>
                                                </form>
                                                 </div>
                                            <div class="modal-footer">
													<button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
													<button id="buttonsubmit" name="buttonsubmit" class="btn btn-warning">Edit</button>
                                                    <button id="buttonsubmit" name="buttonsubmit" class="btn btn-default">Clear</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    
      
                <!--/row-->            
                
               
          </section>
                    
            </aside>


        

        <!-- right-side -->
    </div>
    
       <%@include file="../includes/footer.jsp" %>
  
    <!-- global js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/pages/table-advanced.js"></script>

  
</body>
</html>
