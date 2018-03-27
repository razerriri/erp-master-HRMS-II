<!DOCTYPE html>
<html>
   <head>
      <!-- Include head.jsp here -->
      <%@ include file="includes/head.jsp" %>
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
         <%@ include file="includes/header.jsp" %>
      </head>
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <%@include file="includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <h1>ERP</h1>
               <ol class="breadcrumb">
                  <li class="active">
                     <a href="#">
                     <i class="livicon" data-name="dashboard" data-size="16" data-color="#fff" data-hovercolor="#fff"></i>
                     Home
                     </a>
                  </li>
               </ol>
            </section>
         </aside>
         <!-- End of Rightside column -->
      </div>
      <!-- Include footer.jsp here --> 
      <%@include file="includes/footer.jsp" %> 
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
      <!-- end of page level js -->
   </body>
</html>