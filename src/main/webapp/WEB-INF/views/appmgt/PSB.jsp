<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
     <%@ include file="../includes/head.jsp"%> 
    <title>Personnel Selection Board</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link href="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/css/wizard.css" rel="stylesheet" >
    <link href="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/css/jquery.steps.css" rel="stylesheet" >
    <!--end of page level css-->
</head>
<body class="skin-josh">
<%@ include file="../includes/header.jsp"%> 
<%@ include file="../includes/sidebar.jsp"%>     

<div class="wrapper row-offcanvas row-offcanvas left">
<aside class="right-side">

   
            <section class="content">
                <!--main content-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-white filterable">
                            <div class="panel-heading clearfix">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="dashboard" data-size="16" data-loop="true" data-c="333" data-hc="white"></i>
                                    Personnel Selection Board
                                </h3>
                                <span class="pull-right clickable">
                                    <i class="glyphicon glyphicon-chevron-up"></i>
                                </span>
                            </div>
                            <div class="panel-body">
                                <!--main content-->
                                <div class="row">

                                    <div class="col-md-12">
                                        <h3>Evaluation Form</h3>

                                        <!-- BEGIN FORM WIZARD WITH VALIDATION -->
                                        <form class="form-wizard" action="#" method="POST">
                                            <h1 class="hidden-xs">Applicant Profile</h1>
                                            <section>
                                                <h2 class="hidden">&nbsp;</h2>
                                                <div class="form-group">
                                                    <label for="userName">Name of Applicant:</label>
                                                    <input id="userName" name="userName" type="text" placeholder="Name of Applicant" class="form-control"></div>
                                                <div class="form-group">
                                                    <label for="password">Position Title:</label>
                                                    <input id="password" name="password" type="password" placeholder="Position Title" class="form-control"></div>
                                                <div class="form-group">
                                                    <label for="email">Evaluator:</label>
                                                    <input id="email" name="email" placeholder="Evaluator" type="text" class="form-control"></div>
													
												<div class="form-group">
													<label for="dateofbirth">Date Range:</label>
													
													<div class="input-group">
														<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
														</div>
														<input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
													</div>
													
												</div>
                                                
                                            </section>
											
                                            <h1 class="hidden-xs">Performance</h1>
                                            <section>
                                                <h2 class="hidden">&nbsp;</h2>
                                                <div class="form-group">
                                                    <h4><label for="userName">1. Performance</label></h4></div>
                                                                         <br>                              
                                                    <div class="form-group pad-top40">
                                                            <label for="inputUsername" class="col-md-9 control-label">
                                                                a. Performance (60%)
                                                               
                                                            </label>
                                                            <div class="col-md-3">
                                                    <input id="email" name="grade_performance" placeholder="Max Pts. 50" type="text" class="form-control"></div>
                                                            </div>
<br><br><br>

                                                    <div class="form-group pad-top40">
                                                            <label for="inputUsername" class="col-md-9 control-label">
                                                                b. Behavioral Dimension (40%)
                                                              
                                                            </label>
                                                            <div class="col-md-3">
                                                    <input id="email" name="grade_performance" placeholder="Max Pts. 50" type="text" class="form-control"></div>
                                                            </div>
<br>
                                                        <label for="confirm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Courtesy</label>
                                                        <br>
                                                        <label for="confirm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Human Relations</label><br>
                                                        <label for="confirm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Punctuality and Attendance</label><br>
                                                        <label for="confirm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. Initiative</label>
                                                      
</section>

                                            <h1>Education/Training Experience</h1>

                                            <section>
                                                <h2 class="hidden">&nbsp;</h2>
                                                <div class="form-group">
                                                    <h4><label for="userName">2. Education/ Training Experience/ Outstanding Achievements</label></h4></div><br>
                                                                                                       
                                                    <div class="form-group pad-top40">
                                                            <label for="inputUsername" class="col-md-9 control-label">
                                                                 a. Education
                                                                <span class='require'></span>
                                                            </label>
                                                            <div class="col-md-3">
                                                    <input id="email" name="grade_performance" placeholder="Total Points" type="text" class="form-control required email" disabled></div>
      <br><br>
                                                                

                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
                                                        <input type="checkbox"> <span>1. Bachelor’s Degree Graduate / Diploma Program Graduate</span>
                                                        </label>
    <br>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
                                                        <input type="checkbox"> <span>2. 2 – Year Vocational / Technical Course Graduate</span>
                                                        </label>
    <br>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
                                                        <input type="checkbox"> <span>3. At least 2nd Year College</span>
                                                        </label>                                                                <br>                
                                                                                
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
                                                        <input type="checkbox"> <span>4. High School Graduate</span>
                                                        </label>        
    <br>

                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
                                                        <input type="checkbox"> <span>5. Elementary School Graduate</span>
                                                        </label>        

    </div>
	 <div class="form-group pad-top40">
                                                            <label for="inputUsername" class="col-md-9 control-label">
                                                                b. Training (Relevant trainings/ seminars attended/ participated for the last 3 years)
                                                                
                                                            </label>
                                                            <div class="col-md-3">
                                                    <input id="email" name="grade_performance" placeholder="Total Points" type="text" class="form-control" disabled=""></div>
                                                            </div>
<br>
                                                    <div class="form-group pad-top40">
                                                            <label for="inputUsername" class="col-md-9 control-label">
                                                                 &nbsp;&nbsp; &nbsp;&nbsp;1. International/National/TESDA (2 pts. for every 8 hours of training / seminar)
                                                               
                                                            </label>
                                                            <div class="col-md-3">
                                                    <input id="email" name="grade_performance" placeholder="Max Pts. 6" type="text" class="form-control"></div>
                                                            </div>       

                                                    <div class="form-group pad-top40">
                                                            <label for="inputUsername" class="col-md-9 control-label">
                                                                 &nbsp;&nbsp; &nbsp;&nbsp;2. Regional/Local (1 pt. for every 8 hours of training / seminar)
                                                                
                                                            </label>
                                                            <div class="col-md-3">
                                                    <input id="email" name="grade_performance" placeholder="Max Pts. 6" type="text" class="form-control"></div>
                                                            </div>     
                                                      
                                            </section>
											
											<h1>Physical Characteristics</h1>

                                            <section>
                                                <h2 class="hidden">&nbsp;</h2>
                                                <div class="form-group">
                                                    <h4><label for="userName">3. Physical Characteristics and Personality Traits</label></h4></div>
                                                                                                       
                                                    <div class="form-group pad-top40">
                                                            <label for="inputUsername" class="col-md-9 control-label">
                                                                a. Work Attitude
                                                                
                                                            </label>
                                                            <div class="col-md-3">
                                                    <input id="email" name="grade_performance"  placeholder="Max Pts. 3" type="text" class="form-control"></div>
                                                            </div>
<br><br>

                                                    <div class="form-group pad-top40">
                                                            <label for="inputUsername" class="col-md-9 control-label">
                                                                b. Work Ethics/ Values
                                                               
                                                            </label>
                                                            <div class="col-md-3">
                                                    <input id="email" name="grade_performance" placeholder="Max Pts. 4" type="text" class="form-control"></div>
                                                            </div>
                                                            <br>

                                                    <div class="form-group pad-top40">
                                                            <label for="inputUsername" class="col-md-9 control-label">
                                                                c. Potentials
                                                              
                                                            </label>
                                                            <div class="col-md-3">
                                                    <input id="email" name="grade_performance" placeholder="Max Pts. 3" type="text" class="form-control"></div>
                                                            </div>     <br>                                                   

                                                        <label for="confirm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. 1 Physical Characteristics</label>
                                                        <br>
                                                        <label for="confirm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. 2 Special Skills</label>
                                                      
                                            </section>
                                        </form>
                                        <!-- END FORM WIZARD WITH VALIDATION --> </div>
										
										<div class="panel-footer">
                                                            <div class="row">
                                                                <div class="center">
                                                                   <button class="btn-success btn">Submit</button> 
                                                                   <button class="btn-danger btn">Cancel</button> 
                                                                   <button class="btn-info btn">Reset</button>
                                                                </div>
                                                            </div>
															</div>
				
                                </div>
                                <!--main content end--> </div>
                        </div>
                    </div>
                  
                </div>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/jquery.validate.min.js"></script>
    <script  src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/additional-methods.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/wizard.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/jquery.steps.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/form_wizard.js"></script>
 	<script src="${pageContext.request.contextPath}/resources/js/pages/formwizard.js"></script>
      <%@ include file="../includes/footer.jsp"%> 
</body>
</html>