<!DOCTYPE html>
<html>

<head>
      <%@include file="../includes/head.jsp" %>
    <title>Human Resource Information System 1</title>
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="${pageContext.request.contextPath}/resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/only_dashboard.css" />
</head>

<body class="skin-josh">
  
<%@include file="../includes/header.jsp" %>
  
<div class="wrapper row-offcanvas row-offcanvas-left">

<%@include file="../includes/sidebar.jsp" %>
    
        <aside class="right-side">
            <section class="content-header">
                <h1></h1>
                <ol class="breadcrumb">
                    <li class="active">

                        <a href="#">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Home
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content"> 
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-success filterable" style="overflow:auto;">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                     <i class="livicon" data-name="responsive" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Top Performers
                                </h3>
                            </div>
                            <div class="panel-body">
                           
                           <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                         <thead>                                        <tr>

                                          	<th>#</th>
                                            <th>Name</th>
                                            <th>Job Title</th>
                                            <th>Department</th> 
                                            
                                        </tr>
                                    </thead>


      <tbody>
                                        <tr>
                                         <td>1.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">Mariela Aquino</a></td>
                                            <td>Software Engineer</td>
                                            <td>
                                                IT
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">Andrei Catapang</a></td>
                                            <td>Database Administrator</td>
                                            <td>
                                                IT
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">Red Ketchum</a>
                                            </td>
                                            <td>Junior Admin</td>
                                            <td>
                                                Human Resource
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">May Squirtle</a></td>
                                            <td>IT Support</td>
                                            <td>
                                                IT
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5.</td>
                                            <td><a href = "supervisor_evaluation_ipcr.jsp">Goku Son</a></td>
                                            <td>Junior Architect</td>
                                            <td>
                                                Architecture
                                            </td>
                                        </tr>
                                        
                                    </tbody>

                                    </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row">
                </div>
                <div class="clearfix"></div>
                <div class="row ">

                </div>
            </section>
        </aside>

        

        <!-- right-side -->
    </div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- global js -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
   <script src="${pageContext.request.contextPath}/resources/js/josh.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/metisMenu.js" type="text/javascript"> </script>
    <script src="${pageContext.request.contextPath}/resources/vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
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
    <script type="${pageContext.request.contextPath}/resources/text/javascript" src="vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
     <script src="${pageContext.request.contextPath}/resources/vendors/jscharts/Chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dashboard.js" type="text/javascript"></script>
    <script type="${pageContext.request.contextPath}/resources/text/javascript">
   
 $(document).ready(function() {
        var composeHeight = $('#calendar').height() +21 - $('.adds').height();
        $('.list_of_items').slimScroll({
            color: '#A9B6BC',
            height: composeHeight + 'px',
            size: '5px'
        });
    }); </script>
   
    <!-- end of page level js -->
  
</body>
</html>
