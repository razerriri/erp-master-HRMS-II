<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <%@ include file="../includes/head.jsp" %>
    <title>Human Resources Management System</title>
</head>

<body class="skin-josh">
    <%@ include file="../includes/header.jsp" %>	
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <%@ include file="../includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Human Resources Management System</h1>
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
				<div class="col-lg-12">
                   <div class="panel panel-primary" id="hidepanel1">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="pin-on" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Job Post
                                </h3>
                                
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal" action="#" method="post">
                                    <fieldset>
                                            <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="col-md-2 control-label" for="email">Job Title:</label>
												<div class="col-md-9">
                                                <select id="e1" class="form-control select2">
                                                    <option value="">-</option>
                                                  
                                                        <option value="AZ">IT Software Instructor</option>
                                                        <option value="CO">IT Hardware Instructor</option>
                                                        <option value="ID">HR Instructor</option>
                                                        <option value="MT">Registrar Staff</option>
                                                        <option value="NE">Accounting Staff</option>
                                               
													</div>
                                                </select>
                                            </div>
                                        </div>
										
                                            <div class="form-group">
                                                <label class="col-md-2 control-label" for="email">Specialization:</label>
												<div class="col-md-9">
                                                <select id="e1" class="form-control select2">
                                                    <option value="">-</option>
                                                    
                                                        <option value="AZ">IT Software</option>
                                                        <option value="CO">IT Hardware</option>
                                                        <option value="ID">Accounting</option>
                                                        <option value="MT">Human Resource</option>
  
                                                </select>
												</div>
                                            </div>
											<!--description-->
											<div class="form-group">
                                            <label class="col-md-2 control-label" for="message">Job Description:</label>
                                            <div class="col-md-9">
                                                <textarea class="form-control" id="message" name="message" placeholder="Please enter your message here..." rows="10"></textarea>
                                            </div>
                                        </div>

									 <!-- pay grade-->
                                       <div class="form-group">
                                                <label class="col-md-2 control-label" for="paygrade">Pay Grade:</label>
												<div class="col-md-9">
                            					<text class="form-control" id="message" name="paygrade"></text>
												</div>
                                            </div>
                                        <!-- Form actions -->
                                        <div class="form-group">
                                            <div class="col-md-11 text-right">
                                                <button type="submit" class="btn btn-responsive btn-primary btn-sm">Submit</button>
                                            </div>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>

						</div>
						</div>
						
						</section>
			</aside>
			</div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
   <%@include file="../includes/footer.jsp" %> 
</body>
</html>
