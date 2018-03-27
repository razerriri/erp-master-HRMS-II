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
	<link type="text/css" rel="stylesheet" href="css/pages/flot.css">
	<style type="text/css">.jqstooltip { position: absolute;left: 30px;top: 0px;display: block;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;border: 0px solid white;border-radius: 3px;-webkit-border-radius: 3px;z-index: 10000;}.jqsfield { color: white;padding: 5px 5px 5px 5px;font: 10px arial, san serif;text-align: left;}</style>
</head>
<body onload="window.print();">
<div class="col-lg-12">
                        <div class="panel panel-primary filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="table-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white" id="livicon-46" style="width: 16px; height: 16px;"><svg height="16" version="1.1" width="16" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative;" id="canvas-for-livicon-46"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><path fill="#ffffff" stroke="none" d="M27,2H5C3.343,2,2,3.344,2,5V27C2,28.657,3.343,30,5,30H27C28.657,30,30,28.657,30,27V5C30,3.344,28.657,2,27,2ZM8,15.4V6.6C8,6.269,8.269,6,8.6,6H17.4C17.731,6,18,6.269,18,6.6V15.4C18,15.732000000000001,17.731,16,17.4,16H8.6C8.269,16,8,15.731,8,15.4ZM18,25.4C18,25.730999999999998,17.731,26,17.4,26H14.599999999999998C14.267999999999997,26,13.999999999999998,25.731,13.999999999999998,25.4V22.6C13.999999999999998,22.269000000000002,14.268999999999998,22,14.599999999999998,22H17.4C17.730999999999998,22,18,22.269,18,22.6V25.4ZM24,21.4C24,21.730999999999998,23.731,22,23.4,22H18.6C18.269000000000002,22,18,21.731,18,21.4V16.599999999999998C18,16.267999999999997,18.269,15.999999999999998,18.6,15.999999999999998H23.4C23.730999999999998,15.999999999999998,24,16.269,24,16.599999999999998V21.4Z" stroke-width="0" transform="matrix(0.5,0,0,0.5,0,0)" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path></svg></i>
                                   Employee Timesheet Report
                                </div>
                                    
                                </div>
                               

                            </div>
                            <div class="panel-body" id="printthisone">
                                
                                <table class="table table-striped table-responsive dataTable no-footer" id="table1" role="grid" aria-describedby="table1_info">
                                    <thead>
                                        <tr role="row">
                                        <th class="sorting_asc" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="First Name: activate to sort column ascending" style="width: 96px;">Name</th>
                                        <th class="sorting" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="Last Name: activate to sort column ascending" style="width: 95px;">Date</th>
                                        <th class="sorting" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="User Name: activate to sort column ascending" style="width: 112px;">Total Hours</th>
                                        <th class="sorting" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="User E-mail: activate to sort column ascending" style="width: 197px;">Approver</th>
                                        <th class="sorting" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="Action: activate to sort column ascending" style="width: 63px;">Timesheet Type</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="du" items="${list}">
                                        <tr>
                                        	<td><center>${du.empname}</center></td>
                                             <td><center>${du.tsubmissiondate}</center></td>
                                            <td><center>${du.ttotalhrs}</center></td>
                                            <td><center>${du.tapprover}</center></td>
                                            <td><center>${du.ttype}</center></td>
                         
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table></div>
                               
                            </div>
                           
                        </div>
                        
                    </div>
                   
<!-- ./wrapper -->
</body>
   <!-- Include footer.jsp here --> 
    <%@include file="../includes/footer.jsp" %> 
    <!-- global js -->
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
   <script src="js/josh.js" type="text/javascript"></script>
    <script src="js/metisMenu.js" type="text/javascript"> </script>
    <script src="vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <!--  todolist-->
    <script src="js/todolist.js"></script>
    <!-- EASY PIE CHART JS -->
    <script src="vendors/charts/easypiechart.min.js"></script>
    <script src="vendors/charts/jquery.easypiechart.min.js"></script>
    <!--for calendar-->
    <script src="vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
    <!--   Realtime Server Load  -->
    <script src="vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
    <script src="vendors/charts/jquery.flot.resize.min.js" type="text/javascript"></script>
    <!--Sparkline Chart-->
    <script src="vendors/charts/jquery.sparkline.js"></script>
    <!-- Back to Top-->
    <script type="text/javascript" src="vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
     <script src="vendors/jscharts/Chart.js"></script>
    <script src="js/dashboard.js" type="text/javascript"></script>
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
    <!-- end of page level js -->
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.min.js"></script>
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.stack.js"></script>
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.crosshair.js"></script>
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.time.js"></script>
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.selection.js"></script>
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.symbol.js"></script>
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.resize.js"></script>
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.categories.js"></script>
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.spline.js"></script>
  <script language="javascript" type="text/javascript" src="vendors/charts/jquery.flot.tooltip.js"></script>
  <script language="javascript" type="text/javascript" src="js/pages/customcharts.js"></script>
  
  
  <script language="javascript" type="text/javascript" src="tjs/printing.js"></script>
   

</html>
