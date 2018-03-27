<!DOCTYPE html>
<html>
   <head>
      <!-- Include head.jsp here -->
      <%@include file="../includes/head.jsp" %>
      <!--page level css -->
      <link href="${pageContext.request.contextPath}/resources/css/pages/carousel.css" rel="stylesheet" />
     <!--end of page level css-->
   </head>
   <body class="skin-josh">
      <!-- Include header.jsp here -->
      <head>
         <%@include file="../includes/header.jsp" %>
      </head>
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <%@include file="../includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <h1>Competency Management</h1>
               <ol class="breadcrumb">
                  <li class="active">
                     <a href="#">
                     <i class="livicon" data-name="dashboard" data-size="16" data-color="#fff" data-hovercolor="#fff"></i>
                     Home
                     </a>
                  </li>
               </ol>
            </section>
             <section class="content">
                <!--main content-->
				<div class="row">
                    <div class="col-lg-12">
                        <!-- Stack charts strats here-->
                        <div class="panel panel-info" >
                            <div class="panel-heading">
                                <h3 class="panel-title">
								<i class="livicon" data-name="barchart" data-size="18" data-loop="true" data-c="#fff" data-hc="#fff"></i> Competency Analytics
                                </h3>                             
                            </div>
                            <div class="panel-body"  >
							 
							 <div id="container" style="height:100%; height:500px;" ></div>
							<script language="javascript" type="text/javascript"  src="${pageContext.request.contextPath}/resources/js/echarts.common.min.js"> </script> 
							<script type="text/javascript">
								var dom = document.getElementById("container");
								var myChart = echarts.init(dom);
								var app = {};
								option = null;
								var posList = [
									'left', 'right', 'top', 'bottom',
									'inside',
									'insideTop', 'insideLeft', 'insideRight', 'insideBottom',
									'insideTopLeft', 'insideTopRight', 'insideBottomLeft', 'insideBottomRight'
								];

							app.configParameters = {
								rotate: {
									min: -90,
									max: 90
								},
								align: {
									options: {
										left: 'left',
										center: 'center',
										right: 'right'
									}
								},
								verticalAlign: {
									options: {
										top: 'top',
										middle: 'middle',
										bottom: 'bottom'
									}
								},
								position: {
									options: echarts.util.reduce(posList, function (map, pos) {
										map[pos] = pos;
										return map;
									}, {})
								},
								distance: {
									min: 0,
									max: 100
								}
							};

							app.config = {
								rotate: 90,
								align: 'left',
								verticalAlign: 'middle',
								position: 'insideBottom',
								distance: 15,
								onChange: function () {
									var labelOption = {
										normal: {
											rotate: app.config.rotate,
											align: app.config.align,
											verticalAlign: app.config.verticalAlign,
											position: app.config.position,
											distance: app.config.distance
										}
									};
									myChart.setOption({
										series: [{
											label: labelOption
										}, {
											label: labelOption
										}, {
											label: labelOption
										}, {
											label: labelOption
										}]
									});
								}
							};


							var labelOption = {
								normal: {
									show: true,
									position: app.config.position,
									distance: app.config.distance,
									align: app.config.align,
									verticalAlign: app.config.verticalAlign,
									rotate: app.config.rotate,
									formatter: '{c}  {name|{a}}',
									fontSize: 8,
									rich: {
										name: {
											textBorderColor: '#fff'
										}
									}
								}
							};

							option = {
								color: ['#003366', '#006699', '#4cabce', '#e5323e'],
								tooltip: {
									trigger: 'axis',
									axisPointer: {
										type: 'shadow'
									}
								},
								legend: {
									
									data: ['Core Competencies', 'Leadership Competencies', 'Functional Competencies']
								},
								toolbox: {
									show: true,
									orient: 'vertical',
									left: 'right',
									top: 'center',
									feature: {
										mark: {show: true},
										dataView: {show: true, readOnly: false},
										magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
										restore: {show: true},
										saveAsImage: {show: true}
									}
								},
								calculable: true,
								xAxis: [
									{
										
										type: 'category',
										axisTick: {show: false},
										data: ['Student Services', 'Administrative', 'Acad Program Head', 'Accounting Officer', 'Cash Disbursement Officer']
										
									}
								],
								yAxis: [
									{
										type: 'value'
									}
								],
								series: [
									{
										name: 'Core Competencies',
										type: 'bar',
										barGap: 0,
										label: labelOption,
										data: [16,18, 19, 15, 13]
									},
									{
										name: 'Leadership Competencies',
										type: 'bar',
										label: labelOption,
										data: [18, 16, 17, 12, 11]
									},
									{
										name: 'Functional Competencies',
										type: 'bar',
										label: labelOption,
										data: [15, 13, 15, 9, 10]
									},
								   
								]
							};;
							if (option && typeof option === "object") {
								myChart.setOption(option, true);
							}
								   </script>
							 
							 
                            </div>						
                        </div>
                    </div>       
                </div>
				
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-body">
                                <div class="box-body">
                                    <!--carousel starts-->
                                    <div class="row">
                                        <!-- The carousel -->
                                        <div id="transition-timer-carousel" class="carousel slide transition-timer-carousel" data-ride="carousel">
                                            <!-- Indicators -->
                                            <ol class="carousel-indicators">
                                                <li data-target="#transition-timer-carousel" data-slide-to="0" class="active"></li>
                                                <li data-target="#transition-timer-carousel" data-slide-to="1"></li>
                                          	 </ol>

                                            <!-- Wrapper for slides -->
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <img src="${pageContext.request.contextPath}/resources/img/1.jpg" class='img-responsive' alt="image">
                                                    <div class="carousel-caption">
                                                        <h1 class="carousel-caption-header">Competency Management System</h1>
                                                        <p class="carousel-caption-text hidden-sm hidden-xs">
                                                        An HRMS Module for Competency Management of Employees
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <img src="${pageContext.request.contextPath}/resources/img/2.jpg" class='img-responsive' alt="image">
                                                    <div class="carousel-caption">
                                                        <h1 class="carousel-caption-header">Competency Management System</h1>
                                                        <p class="carousel-caption-text hidden-sm hidden-xs">
                                                        Able to keep and secure employees' competency record
                                                        </p>
                                                    </div>
                                                </div>
                                                
                                               
                                            </div>

                                            <!-- Controls -->
                                            <a class="left carousel-control" href="#transition-timer-carousel" data-slide="prev">
                                                <span class="glyphicon glyphicon-chevron-left"></span>
                                            </a>
                                            <a class="right carousel-control" href="#transition-timer-carousel" data-slide="next">
                                                <span class="glyphicon glyphicon-chevron-right"></span>
                                            </a>

                                            <!-- Timer "progress bar" -->
                                            <hr class="transition-timer-carousel-progress-bar animate" />
                                        </div>
                                    </div>
                                    <!--carousel ends-->
                                </div>
                            </div>
                        </div>
                    </div>
                   </div>				
				</div>
            </section>
         </aside>
         <!-- End of Rightside column -->
      </div>
      <!-- Include footer.jsp here --> 
      <%@include file="../includes/footer.jsp" %> 
      <!-- begining of page level js -->
      <!--  todolist-->
      <!-- end of page level js -->
	<script src="${pageContext.request.contextPath}/resources/vendors/sparkline/src/chart-bar.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/echarts.js"></script>
	 
 
	<script src="${pageContext.request.contextPath}/resources/js/carousel.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        $('#myCarousel').carousel({
            interval: 4000
        });

        var clickEvent = false;
        $('#myCarousel').on('click', '.nav a', function() {
            clickEvent = true;
            $('.nav li').removeClass('active');
            $(this).parent().addClass('active');
        }).on('slid.bs.carousel', function(e) {
            if (!clickEvent) {
                var count = $('.nav').children().length - 1;
                var current = $('.nav li.active');
                current.removeClass('active').next().addClass('active');
                var id = parseInt(current.data('slide-to'));
                if (count == id) {
                    $('.nav li').first().addClass('active');
                }
            }
            clickEvent = false;
        });
    });
    </script>
	   </body>
</html>