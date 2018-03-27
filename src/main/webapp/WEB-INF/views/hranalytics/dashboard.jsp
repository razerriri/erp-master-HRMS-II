<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
   <head>
      <%@include file="../includes/head.jsp" %>
      <link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
      <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/only_dashboard.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/jscharts.css" />
      <!--end of page level css-->
   </head>
   <body class="skin-josh">
      <%@include file="../includes/header.jsp" %>
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <!-- Left side column. contains the logo and sidebar -->
         <%@include file="../includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <!--section starts-->
               <h1>Dashboard</h1>
               <ol class="breadcrumb">
                  <li>
                     <a href="index">
                     <i class="livicon" data-name="home" data-size="15" data-loop="true"></i>
                     Home
                     </a>
                  </li>
                  <!-- 
                     <li>
                         <a href="#">System Setup</a>
                     </li>
                     <li class="active">Compensation Types</li>
                      -->
               </ol>
            </section>
            <section class="content">
               <!-- Beginning of Widgets -->
               <div class="row">
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInLeftBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="lightbluebg no-radius" onclick="window.location='recruitment/hirees'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 text-right">
                                    <span>Number of Employee</span>
                                    <div class="number">4665</div>
                                 </div>
                                 <i class="livicon  pull-right" data-name="users" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInUpBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="redbg no-radius" onclick="window.location='recruitment/resigned'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Turnover rate</span>
                                    <div class="number">8%</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="redo" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6 col-md-6 margin_10 animated fadeInDownBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="goldbg no-radius" onclick="window.location='recruitment/cancelled-applicant'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Average Performance</span>
                                    <div class="number">7.1/10</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="linechart" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="palebluecolorbg no-radius" onclick="window.location='recruitment/employment-rate'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Employment Rate</span>
                                    <div class="number">200%</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="users" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="lightbluebg no-radius" onclick="window.location='recruitment/employment-rate'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Average Salary</span>
                                    <div class="number" id="myTargetElement4">24,560</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="money" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="redbg no-radius" onclick="window.location='recruitment/employment-rate'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Absence Rate</span>
                                    <div class="number">8%</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="remove-circle" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="goldbg no-radius" onclick="window.location='recruitment/employment-rate'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Job Satisfaction</span>
                                    <div class="number">8/10</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="thumbs-up" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="palebluecolorbg no-radius" onclick="window.location='recruitment/employment-rate'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Average time till promotion</span>
                                    <div class="number">14 months</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="sandglass" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="lightbluebg no-radius" onclick="window.location='recruitment/employment-rate'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Problem Employee Rate</span>
                                    <div class="number">4%</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="users-ban" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="redbg no-radius" onclick="window.location='recruitment/employment-rate'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Average Retention Period</span>
                                    <div class="number">51 months</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="retweet" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="goldbg no-radius" onclick="window.location='recruitment/employment-rate'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Vacancies</span>
                                    <div class="number">12 jobs</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="zoom-in" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="palebluecolorbg no-radius" onclick="window.location='recruitment/employment-rate'">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Average time to hire</span>
                                    <div class="number">4 months</div>
                                 </div>
                                 <i class="livicon pull-right" data-name="spinner-one" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!--/row-->
            </section>
            
            	<div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="panel panel-border">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <i class="livicon" data-name="barchart" data-size="18" data-c="#fff" data-hc="#fff" data-loop="true"></i>
                           Gender Percentage
                        </h4>
                        <span class="pull-right">
                        <i class="fa fa-fw fa-chevron-up clickable"></i>
                        <i class="fa fa-fw fa-times removepanel clickable"></i>
                        </span>
                     </div>
                     <div class="panel-body">
                        <div>
                           <canvas id="pie-chart" width="800" height="300"></canvas>
                        </div>
                     </div>
                  </div>
                  
                  <div class="panel panel-border">
                  <div class="panel-heading border-light">
                     <h4 class="panel-title">
                        <i class="livicon" data-name="users" data-size="16" data-loop="true" data-c="#333" data-hc="#333"></i>
                        Key employee and satisfaction rate
                     </h4>
                     <div class="table-scrollable">
                        <table class="table table-hover">
                           <thead>
                              <tr>
                                 <th>#</th>
                                 <th>Employee Name</th>
                                 <th>Department</th>
                                 <th>Job Title</th>
                                 <th>Satisfaction Rate</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>1</td>
                                 <td>Pablo Escobar</td>
                                 <td>Faculty - SHS</td>
                                 <td>Professor</td>
                                 <td>72%</td>
                              </tr>
                              <tr>
                                 <td>2</td>
                                 <td>Joaquin Guzman</td>
                                 <td>Administrative</td>
                                 <td>Research and Development officer</td>
                                 <td>80%</td>
                              </tr>
                              <tr>
                                 <td>3</td>
                                 <td>Walter White</td>
                                 <td>Maintenance</td>
                                 <td>Senior Floor Manager</td>
                                 <td>85%</td>
                              </tr>
                              <tr>
                                 <td>4</td>
                                 <td>Robert Baratheon</td>
                                 <td>Faculty - College</td>
                                 <td>Professor</td>
                                 <td>91%</td>
                              </tr>
                              <tr>
                                 <td>5</td>
                                 <td>Eddard Stark</td>
                                 <td>Security</td>
                                 <td>Security Guard</td>
                                 <td>79%</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
               </div>
            
            <div class="row>">
            	 <div class="col-lg-6 col-md-6 col-sm-6">
            	 	<div class="panel panel-info">
                  <div class="panel-heading">
                     <h4 class="panel-title">
                        <i class="livicon" data-name="barchart" data-size="18" data-c="#fff" data-hc="#fff" data-loop="true"></i>
                        Employee Performance
                     </h4>
                     <span class="pull-right">
                     <i class="fa fa-fw fa-chevron-up clickable"></i>
                     <i class="fa fa-fw fa-times removepanel clickable"></i>
                     </span>
                  </div>
                  <div class="panel-body">
                     <div>
                        <canvas id="bar-chart" width="800" height="300" ></canvas>
                     </div>
                  </div>
               		</div>
               		<div class="panel-body">
                        <canvas id="line-chart" width="800" height="300"></canvas>
                     </div>
            	 </div>
            </div>
   
            <div class="panel panel-default">
            </div>
         </aside>
         <%@include file="../includes/footer.jsp" %>
         <!-- begining of page level js -->
         <!--  todolist-->
   <script src="${pageContext.request.contextPath}/resources/js/todolist.js"></script>
      <!-- EASY PIE CHART JS -->
      <script src="${pageContext.request.contextPath}/resources/vendors/charts/easypiechart.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.easypiechart.min.js"></script>
      <!--for calendar-->
      <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
      <!--   Realtime Server Load  -->
      <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.flot.resize.min.js" type="text/javascript"></script>
      <!--Sparkline Chart-->
      <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.sparkline.js"></script>
      <!-- Back to Top-->
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/countUp/countUp.js"></script>
      <!--   maps -->
      <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/jscharts/Chart.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/dashboard.js" type="text/javascript"></script>
      <script type="text/javascript">
         $(document).ready(function() {
             var composeHeight = $('#calendar').height() +21 - $('.adds').height();
             $('.list_of_items').slimScroll({
                 color: '#A9B6BC',
                 height: composeHeight + 'px',
                 size: '5px'
             });
         });
      </script>
      <script> 
         var pieData = [
         {
             value: 20,
             color:"#EF6F6C"
             
         },
         {
             value : 30,
             color : "#01BC8C"
         },
         {
             value : 40,
             color : "#418BCA"
         }
         
         ];
         function draw4(){
         
                 var selector = '#pie-chart';
         
                 $(selector).attr( 'width', $(selector).parent().width() )
                    var myPie = new Chart(document.getElementById("pie-chart").getContext("2d")).Pie(pieData);
             }
           $(window).resize( draw4 );
          draw4()
      </script>
      <script>var lineChartData = {
         labels : ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],
         datasets : [
             {
                 fillColor : "rgba(65,139,202,0.5)",
                 strokeColor : "rgba(65,139,202,0.5)",
                 pointColor : "rgba(65,139,202,0.5)",
                 pointStrokeColor : "#fff",
                 data : [130,63,103,51,93,55,80,140,100,92,108,110]
             },
             {
                 fillColor : "rgba(239,111,108,0.5)",
                 strokeColor : "rgba(239,111,108,0.5)",
                 pointColor : "rgba(239,111,108,0.5)",
                 pointStrokeColor : "#fff",
                 data : [30,48,35,24,35,27,50,40,60,35,46,30]
             },
              {
                 fillColor : "rgba(0, 255, 98, 0.5)",
                 strokeColor : "rgba(0, 248, 134, 0.5)",
                 pointColor : "rgba(209, 247, 0, 0.5)",
                 pointStrokeColor : "#000000",
                 data : [140,70,23,20,93,200,40,120,90,100,20,42]
             }
         ]
         
         }
             function draw(){
         
                 var selector = '#line-chart';
         
                 $(selector).attr( 'width', $(selector).parent().width() )
                 var myLine = new Chart(document.getElementById("line-chart").getContext("2d")).Line(lineChartData);
             }
           $(window).resize( draw );
          draw()
      </script>
      <script>    
         var barChartData = {
         labels : ["1 - Poor","2 - Satisfactory","3 - Fair","4 - Good","5 - Outstanding"],
         datasets : [
             {
                 fillColor : "#67C5DF",
                 strokeColor : "#67C5DF",
                 data : [65,59,90,81,56]
             }
         ]
         
         }  
         function draw1(){
         
                 var selector = '#bar-chart';
         
                 $(selector).attr( 'width', $(selector).parent().width() )
                   var myBar = new Chart(document.getElementById("bar-chart").getContext("2d")).Bar(barChartData);
             }
           $(window).resize( draw1 );
          draw1()
      </script>
      <script src="${pageContext.request.contextPath}/resources/vendors/jscharts/Chart.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/pages/chartjs.js"></script>
         <script>
         	sidebar.hra();
         </script>
         
         
      </div>
   </body>
</html>