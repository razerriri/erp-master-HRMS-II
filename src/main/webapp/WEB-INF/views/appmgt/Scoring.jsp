<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <%@ include file="../includes/head.jsp" %>
    <title>Applicant Score Sheet</title>
    <%@ include file="../includes/header.jsp" %>	
</head>

<body class="skin-josh">
<%@ include file="../includes/sidebar.jsp" %>
 
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
                        <a href="AppScore.html">
                            <i class="livicon" data-name="dashboard" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Applicant Score Sheet 
                        </a>
                    </li>
                </ol>
            </section>
			
			<div class="col-md-12">
					<div class="panel panel-white">
						<div class="panel-heading">
							<h3 class="panel-title">
                            <i class="livicon" data-name="dashboard" data-loop="true" data-color="#333" data-hovercolor="#333" data-size="18"></i>
                            Applicant Score Sheet 
                            </h3>
						</div>

						<div class="panel-body">
							<table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
										
											<th>Full Name</th>
											<th>Position Title</th>
											<th>Average Score</th>
                                            <th>Performance</th>
                                            <th>Behavioral Dimension</th>
                                            <th>Education</th>
                                            <th>Tarining</th>
                                            <th>Work Attitude</th>
											<th>Work Ethics/Values</th>
											<th>Potentials</th>
											<th>Status</th>	
											
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>

											<td>James Dean</td>
											<td>Asst. Prof. II</td>
											<td><center><b>3.25</b></center></td>
                                            <td><center>35 pts</center></td>
											<td><center>40 pts</center></td>
											<td><center>13 pts</center></td>
											<td><center>11 pts</center></td>
											<td><center>5 pts</center></td>
											<td><center>12 pts</center></td>
											<td><center>8 pts</center></td>
											<td>Completed</td>
											
										</tr>
										
										<tr>

											<td>Audrey Hepburn</td>
											<td>University Professor</td>
											<td><center><b>3.84</b></center></td>
                                            <td><center>10 pts</center></td>
											<td><center>10 pts</center></td>
											<td><center>12 pts</center></td>
											<td><center>15 pts</center></td>
											<td><center>1 pts</center></td>
											<td><center></center></td>
											<td><center></center></td>
											<td>Ongoing</td>
											
										</tr>
										
										<tr>

											<td>Xander Ford</td>
											<td>College Professor</td>
											<td><center><b>3.55</b></center></td>
                                            <td><center>8 pts</center></td>
											<td><center>9 pts</center></td>
											<td><center>7 pts</center></td>
											<td><center>5 pts</center></td>
											<td><center>10 pts</center></td>
											<td><center>12 pts</center></td>
											<td><center>11 pts</center></td>
											<td>Completed</td>
											
										</tr>
											
 
										
                                    </tbody>
                                </table>
						</div>
					</div>
				</div>
				
			</aside>
			</div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <%@include file="../includes/footer.jsp" %> 
</body>
</html>
