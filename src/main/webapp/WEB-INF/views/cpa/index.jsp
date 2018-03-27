<!DOCTYPE html>
<html>
   <head>
      <!-- Include head.jsp here -->
      <%@ include file="../includes/head.jsp" %>
      <!--page level css -->
      <link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
      <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/only_dashboard.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/jscharts.css" />
      <!--end of page level css-->
   </head>
   <body class="skin-josh">
      <!-- Include header.jsp here -->
      <head>
         <%@ include file="../includes/header.jsp" %>
      </head>
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <%@include file="../includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <h1>Compensation Planning and Administration</h1>
               <ol class="breadcrumb">
                  <li class="active">
                     <a href="#">
                     <i class="livicon" data-name="dashboard" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                     Home
                     </a>
                  </li>
               </ol>
            </section>
            <section class="content">
               <div class="row">
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInLeftBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="lightbluebg no-radius">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 text-right">
                                    <span>Company Budget</span>
                                    <div class="number" id="myTargetElement1"></div>
                                 </div>
                                 <i class="livicon  pull-right" data-name="money" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              <div class="row">
                                 <div class="col-xs-6">
                                    <small class="stat-label">July</small>
                                    <h4 id="myTargetElement1.1"></h4>
                                 </div>
                                 <div class="col-xs-6 text-right">
                                    <small class="stat-label">August</small>
                                    <h4 id="myTargetElement1.2"></h4>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInUpBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="redbg no-radius">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Average Employee Compensation</span>
                                    <div class="number" id="myTargetElement2"></div>
                                 </div>
                                 <i class="livicon pull-right" data-name="piggybank" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              <div class="row">
                                 <div class="col-xs-6">
                                    <small class="stat-label">Last Week</small>
                                    <h4 id="myTargetElement2.1"></h4>
                                 </div>
                                 <div class="col-xs-6 text-right">
                                    <small class="stat-label">Last Month</small>
                                    <h4 id="myTargetElement2.2"></h4>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6 col-md-6 margin_10 animated fadeInDownBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="goldbg no-radius">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Highest Department Budget</span>
                                    <div class="number" id="myTargetElement3"></div>
                                 </div>
                                 <i class="livicon pull-right" data-name="archive-add" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              <div class="row">
                                 <div class="col-xs-6">
                                    <small class="stat-label">Last Week</small>
                                    <h4 id="myTargetElement3.1"></h4>
                                 </div>
                                 <div class="col-xs-6 text-right">
                                    <small class="stat-label">Last Month</small>
                                    <h4 id="myTargetElement3.2"></h4>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                     <!-- Trans label pie charts strats here-->
                     <div class="palebluecolorbg no-radius">
                        <div class="panel-body squarebox square_boxs">
                           <div class="col-xs-12 pull-left nopadmar">
                              <div class="row">
                                 <div class="square_box col-xs-7 pull-left">
                                    <span>Handled Employees</span>
                                    <div class="number" id="myTargetElement4"></div>
                                 </div>
                                 <i class="livicon pull-right" data-name="users" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                              </div>
                              <div class="row">
                                 <div class="col-xs-6">
                                    <small class="stat-label">Last Week</small>
                                    <h4 id="myTargetElement4.1"></h4>
                                 </div>
                                 <div class="col-xs-6 text-right">
                                    <small class="stat-label">Last Month</small>
                                    <h4 id="myTargetElement4.2"></h4>
                                 </div>
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
                  <div class="panel-heading border-light">
                     <h4 class="panel-title">
                        <i class="livicon" data-name="users" data-size="16" data-loop="true" data-c="#333" data-hc="#333"></i>
                        Top Employees of the Month
                     </h4>
                     <div class="table-scrollable">
                        <table class="table table-hover">
                           <thead>
                              <tr>
                                 <th>#</th>
                                 <th>Employee Name</th>
                                 <th>Department</th>
                                 <th>Job Description</th>
                                 <th></th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>1</td>
                                 <td>Pablo Escobar</td>
                                 <td>Faculty - SHS</td>
                                 <td>Professor</td>
                                 <td><button type="button" class="btn btn-responsive button-alignment btn-success" style="margin-bottom:7px;" data-toggle="modal" data-target="#modalpromote">Promote</button></td>
                              </tr>
                              <tr>
                                 <td>2</td>
                                 <td>Joaquin Guzman</td>
                                 <td>Administrative</td>
                                 <td>Research and Development officer</td>
                                 <td><button type="button" class="btn btn-responsive button-alignment btn-success" style="margin-bottom:7px;" data-toggle="button">Promote</button></td>
                              </tr>
                              <tr>
                                 <td>3</td>
                                 <td>Walter White</td>
                                 <td>Maintenance</td>
                                 <td>Senior Floor Manager</td>
                                 <td><button type="button" class="btn btn-responsive button-alignment btn-success" style="margin-bottom:7px;" data-toggle="modal">Promote</button></td>
                              </tr>
                              <tr>
                                 <td>4</td>
                                 <td>Robert Baratheon</td>
                                 <td>Faculty - College</td>
                                 <td>Professor</td>
                                 <td><button type="button" class="btn btn-responsive button-alignment btn-success" style="margin-bottom:7px;" data-toggle="button">Promote</button></td>
                              </tr>
                              <tr>
                                 <td>5</td>
                                 <td>Eddard Stark</td>
                                 <td>Security</td>
                                 <td>Security Guard</td>
                                 <td><button type="button" class="btn btn-responsive button-alignment btn-success" style="margin-bottom:7px;" data-toggle="button">Promote</button></td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
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
            </div>
            <div class="modal fade" id="modalpromote" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">
                           <i class="fa fa-plus"></i>
                           Promote Employee
                        </h4>
                     </div>
                     <div class="modal-body">
                        <strong>Promote Employee</strong>
                        <br><br>
                        <img src="img/escobs.jpg"></img><br><br>
                        Name :  Pablo Escobar <br><br>
                        Hire Date: 10/2/1997 <br><br>
                        Department: Faculty- SHS<br><br>
                        Current Job Description: Professor <br><br>
                        <br>
                        <div class="form-group">
                           <label>Target Department:</label>
                           <select class="form-control">
                              <option>Administrative</option>
                              <option>Research</option>
                              <option>Logistics</option>
                              <option>Finance</option>
                           </select>
                        </div>
                        <label>Target Job Description: </label>
                        <select class="form-control">
                           <option>-</option>
                           <option>Senior Floor Manager</option>
                           <option>Senior Professor</option>
                           <option>Emperor</option>
                           <option>Payroll Master</option>
                        </select>
                     </div>
                     <div class="input-group-btn">
                     </div>
                     <!-- /btn-group --> 
                     <!-- /input-group --> 
                  </div>
                  <div class="modal-footer">
                     <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                     Close
                     <i class="fa fa-times"></i>
                     </button>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="panel panel-border">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <i class="livicon" data-name="barchart" data-size="18" data-c="#fff" data-hc="#fff" data-loop="true"></i>
                           Budget Per Department
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
               </div>
               <!-- To do list -->
               <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="panel panel-border">
                     <div class="panel-heading">
                        <h3 class="panel-title">
                           <i class="livicon" data-name="linechart" data-size="16" data-loop="true" data-c="#000" data-hc="#000"></i>
                           School Budget
                        </h3>
                        <span class="pull-right">
                        <i class="glyphicon glyphicon-chevron-up showhide clickable"></i>
                        <i class="glyphicon glyphicon-remove removepanel clickable"></i>
                        </span>
                     </div>
                     <div class="panel-body">
                        <canvas id="line-chart" width="800" height="300"></canvas>
                     </div>
                  </div>
               </div>
            </div>
            <div class="clearfix"></div>
            <div class="row ">
               <div class="col-md-4 col-sm-12">
                  <div class="panel panel-danger">
                     <div class="panel-heading border-light">
                        <h4 class="panel-title">
                           <i class="livicon" data-name="mail" data-size="18" data-color="white" data-hc="white" data-l="true"></i>
                           Quick Mail
                        </h4>
                     </div>
                     <div class="panel-body no-padding">
                        <div class="compose row">
                           <label class="col-md-3 hidden-xs">To:</label>
                           <input type="text" class="col-md-9 col-xs-9" placeholder="name@email.com " tabindex="1" />
                           <div class="clear"></div>
                           <label class="col-md-3 hidden-xs">Subject:</label>
                           <input type="text" class="col-md-9 col-xs-9" tabindex="1" placeholder="Subject" />
                           <div class="clear"></div>
                           <div class='box-body'>
                              <form>
                                 <textarea class="textarea textarea_home" placeholder="Write mail content here"></textarea>
                              </form>
                           </div>
                           <br />
                           <div class="pull-right">
                              <a href="#" class="btn btn-danger">Send</a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="panel panel-default">
            </div>
         </aside>
         <!-- End of Rightside column -->
      </div>
      <!-- Include footer.jsp here --> 
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
      <script>sidebar.cpa();</script>
      <!-- end of page level js -->
   </body>
</html>