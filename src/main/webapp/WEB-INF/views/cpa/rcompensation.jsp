<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <!-- Include head.jsp here -->
      <%@ include file="../includes/head.jsp" %>
      <!--page level css -->
      <link href="${pageContext.request.contextPath}/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
      <link href="${pageContext.request.contextPath}/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/vendors/jvectormap/jquery-jvectormap.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/animate/animate.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/only_dashboard.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pages/jscharts.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendors/datatables/css/dataTables.colReorder.min.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendors/datatables/css/dataTables.scroller.min.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendors/datatables/css/dataTables.bootstrap.css" />
      <link href="${pageContext.request.contextPath}/css/pages/tables.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pages/tab.css" />
      <link href="${pageContext.request.contextPath}/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
      <link href="${pageContext.request.contextPath}/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/vendors/jvectormap/jquery-jvectormap.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/animate/animate.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/only_dashboard.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pages/jscharts.css" />
      <!--end of page level css-->
      <title>Compensations</title>
      <%@include file="../includes/header.jsp" %>
   </head>
   <body class="skin-josh">
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <%@include file="../includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <h1>Compensation Planning and Administration</h1>
               <div class="row" id="table1">
                  <div class="col-lg-15">
                     <div class="panel panel-primary filterable">
                        <div class="panel-heading clearfix  ">
                           <div class="panel-title pull-left">
                              <div class="caption">
                                 <i class="livicon" data-name="money" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                 Compensation
                              </div>
                           </div>
                           <div class="pull-right"><a href="#" class="btn btn-default" onclick="printDiv();"><span ></span> Print</a></div>
                        </div>
                     </div>
                     <div class="panel-body" >
                        <div align="left">
                           <ul class="nav nav-tabs faq-cat-tabs">
                              <li class="active">
                                 <a href="#faq-cat-basepay" data-toggle="tab">Base Pay</a>
                              </li>
                              <li>
                                 <a href="#faq-cat-allowance" data-toggle="tab">Allowances</a>
                              </li>
                              <li>
                                 <a href="#faq-cat-earnings" data-toggle="tab">Earnings</a>
                              </li>
                              <li>
                                 <a href="#faq-cat-13th" data-toggle="tab">13th Month Pay</a>
                              </li>
                              <li>
                                 <a href="#faq-cat-misc" data-toggle="tab">Miscellaneous</a>
                              </li>
                              <li>
                                 <a href="#faq-cat-total" data-toggle="tab">Total Compensation</a>
                              </li>
                           </ul>
                        </div>
                        <br>
                        <br>
                        <div class="tab-content faq-cat-content">
                           <div class="tab-pane active in fade" id="faq-cat-basepay">
                              <table class="table table-striped table-responsive" id="table1">
                                 <thead>
                                    <tr class="filters">
                                       <th>Employee Number</th>
                                       <th>Employee Name</th>
                                       <th>Job Title</th>
                                       <th>Job Level</th>
                                       <th>Department</th>
                                       <th>Hire date</th>
                                       <th>Pay Grade</th>
                                       <th>Salary Type</th>
                                       <th>Pay Rate</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>2001-00111</td>
                                       <td>John Snoe</td>
                                       <td>Professor</td>
                                       <td>III</td>
                                       <td>Faculty - College</td>
                                       <td>10/20/2001</td>
                                       <td>13</td>
                                       <td>Hourly</td>
                                       <td>PHP 10,500.00</td>
                                    </tr>
                                    <tr>
                                       <td>2001-00121</td>
                                       <td>Rebecca Black</td>
                                       <td>Professor</td>
                                       <td>IV</td>
                                       <td>Faculty - College</td>
                                       <td>10/20/2005</td>
                                       <td>27</td>
                                       <td>Hourly</td>
                                       <td>PHP 30,500.00</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                           <div class="tab-pane fade" id="faq-cat-allowance">
                              <table class="table table-striped table-responsive" id="table2">
                                 <thead>
                                    <tr class="filters">
                                       <th>Employee Number</th>
                                       <th>Employee Name</th>
                                       <th>Job Title</th>
                                       <th>Job Level</th>
                                       <th>Department</th>
                                       <th>Allowance Name</th>
                                       <th>Value</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>2003-00331</td>
                                       <td>Rebecca Black</td>
                                       <td>Professor</td>
                                       <td>VI</td>
                                       <td>Faculty - College</td>
                                       <td>Clothing Allowance</td>
                                       <td>PHP 2,500.00</td>
                                    </tr>
                                    <tr>
                                       <td>2003-00331</td>
                                       <td>Rebecca Black</td>
                                       <td>Professor</td>
                                       <td>VI</td>
                                       <td>Faculty - College</td>
                                       <td>Shelter Allowance</td>
                                       <td>PHP 2,500.00</td>
                                    </tr>
                                    <tr>
                                       <td>2003-00331</td>
                                       <td>Rebecca Black</td>
                                       <td>Professor</td>
                                       <td>VI</td>
                                       <td>Faculty - College</td>
                                       <td>Clothing Allowance</td>
                                       <td>PHP 2,500.00</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                           <div class="tab-pane fade" id="faq-cat-earnings">
                              <table class="table table-striped table-responsive" id="table3">
                                 <thead>
                                    <tr class="filters">
                                       <th>Employee Number</th>
                                       <th>Employee Name</th>
                                       <th>Job Title</th>
                                       <th>Job Level</th>
                                       <th>Department</th>
                                       <th>Earning</th>
                                       <th>Amount</th>
                                       <th>Number of Times</th>
                                       <th>Total</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>2001-00111</td>
                                       <td>John Snoe</td>
                                       <td>Professor</td>
                                       <td>III</td>
                                       <td>Faculty - College</td>
                                       <td>Overtime</td>
                                       <td>5,000.00</td>
                                       <td>5</td>
                                       <td>25,000.00</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                           <div class="tab-pane fade" id="faq-cat-13th">
                              <table class="table table-striped table-responsive" id="table3">
                                 <thead>
                                    <tr class="filters">
                                       <th>Employee Number</th>
                                       <th>Employee Name</th>
                                       <th>Job Title</th>
                                       <th>Job Level</th>
                                       <th>Department</th>
                                       <th>Hire date</th>
                                       <th>Amount</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>2001-00111</td>
                                       <td>John Snoe</td>
                                       <td>Professor</td>
                                       <td>III</td>
                                       <td>Faculty - College</td>
                                       <td>10/20/2001</td>
                                       <td>PHP 10,500.00</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                           <div class="tab-pane fade" id="faq-cat-misc">
                              <table class="table table-striped table-responsive" id="table3">
                                 <thead>
                                    <tr class="filters">
                                       <th>Employee Number</th>
                                       <th>Employee Name</th>
                                       <th>Job Title</th>
                                       <th>Job Level</th>
                                       <th>Department</th>
                                       <th>Hire date</th>
                                       <th>Pay Grade</th>
                                       <th>Salary Type</th>
                                       <th>Pay Rate</th>
                                       <th>Accumulated Compensations</th>
                                       <th>Total</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>2001-00111</td>
                                       <td>John Snoe</td>
                                       <td>Professor</td>
                                       <td>III</td>
                                       <td>Faculty - College</td>
                                       <td>10/20/2001</td>
                                       <td>13</td>
                                       <td>Hourly</td>
                                       <td>PHP 10,500.00</td>
                                       <td>PHP 5,000.00</td>
                                       <td>PHP 15,500.00</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                           <div class="tab-pane fade" id="faq-cat-total">
                              <table class="table table-striped table-responsive" id="table3">
                                 <thead>
                                    <tr class="filters">
                                       <th>Employee Number</th>
                                       <th>Employee Name</th>
                                       <th>Job Title</th>
                                       <th>Job Level</th>
                                       <th>Department</th>
                                       <th>Hire date</th>
                                       <th>Pay Grade</th>
                                       <th>Salary Type</th>
                                       <th>Pay Rate</th>
                                       <th>Accumulated Compensations</th>
                                       <th>Total</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>2001-00111</td>
                                       <td>John Snoe</td>
                                       <td>Professor</td>
                                       <td>III</td>
                                       <td>Faculty - College</td>
                                       <td>10/20/2001</td>
                                       <td>13</td>
                                       <td>Hourly</td>
                                       <td>PHP 10,500.00</td>
                                       <td>PHP 5,000.00</td>
                                       <td>PHP 15,500.00</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
      </div>
      <!--/row-->
      <div class="modal fade" id="modalemp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
      <div class="modal-content">
      <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      <h4 class="modal-title" id="myModalLabel">
      <i class="fa fa-plus"></i>
      Employee Details
      </h4>
      </div>
      <div class="modal-body">
      <div class="row">
      <div class="col-lg-12">
      <ul class="nav  nav-tabs ">
      <li class="active">
      <a href="#tab1" data-toggle="tab">
      <i class="livicon" data-name="user" data-size="16" data-c="#000" data-hc="#000" data-loop="true"></i>
      Employee Details</a>
      </li>
      <li>
      <a href="#tab2" data-toggle="tab">
      <i class="livicon" data-name="key" data-size="16" data-loop="true" data-c="#000" data-hc="#000"></i>
      Compensation Details</a>
      </li>
      </ul>
      <div  class="tab-content mar-top">
      <div id="tab1" class="tab-pane fade active in">
      <div class="row">
      <div class="col-lg-12">
      <div class="panel">
      <div class="panel-heading">
      <h3 class="panel-title">
      Employee Details
      </h3>
      </div>
      <div class="panel-body">
      <div class="col-md-4">
      <div class="fileinput fileinput-new" data-provides="fileinput">
      <div class="fileinput-new thumbnail img-file">
      <img src="img/jmari.jpg" ></div>
      </div>
      </div>
      <div class="col-md-8">
      <div class="panel-body">
      <div class="table-responsive">
      <table class="table table-bordered table-striped" id="users">
      <tr>
      <td>Employee Name</td>
      <td>
      Jose Mari
      </td>
      </tr>
      <tr>
      <td>Job Description</td>
      <td>
      <a href="#" data-pk="1" class="editable" data-title="Edit E-mail">Professor II</a>
      </td>
      </tr>
      <tr>
      <td>Department</td>
      <td>
      <a href="#" data-pk="1" class="editable" data-title="Edit Phone Number">Faculty</a>
      </td>
      </tr>
      <tr>
      <td>Hire Date</td>
      <td>
      <a href="#" data-pk="1" class="editable" data-title="Edit Address">12-25-2003</a>
      </td>
      </tr>
      <tr>
      <td>Status</td>
      <td>
      <a href="#" id="status" data-type="select" data-pk="1" data-value="1" data-title="Status"></a>
      </td>
      </tr>
      <tr>
      <td>Pay Grade</td>
      <td>
      16
      </td>
      </tr>
      <tr>
      <td>Base Pay</td>
      <td>
      <input id="textinput" name="textinput" type="text" value="10,000.00" >
      </td>
      </tr>
      </table>
      </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      <div id="tab2" class="tab-pane fade">
      <div class="row">
      <div class="col-md-12 pd-top">
      <form action="#" class="form-horizontal">
      <div class="table-responsive">
      <table class="table table-bordered table-striped" id="users">
      <tr>
      <td>Base Pay</td>
      <td>
      <input id="textinput" name="textinput" type="text" value="10,000.00" >
      </td>
      </tr>
      <tr>
      <td>Percentage</td>
      <td>
      <a href="#" data-pk="1" class="editable" data-title="Edit E-mail">1.3%</a>
      </td>
      </tr>
      </table>
      </div>
      </form>
      </div>
      </div>
      </div>
      </div>
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
      <script src="${pageContext.request.contextPath}/resources/vendors/jscharts/Chart.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/pages/chartjs.js"></script>
      <script>sidebar.cpa();</script>
      <script>
      	function printDiv(){
      		var divName = "table1";
      		var printContents = document.getElementById(divName).innerHTML;
      		var originalContents = document.body.innerHTML;
      		
      		document.body.innerHTML = printContents;
      		window.print();
      		
      		document.body.innerHTML = originalContents;
      	}
      </script>
      <!-- end of page level js -->
   </body>
</html>