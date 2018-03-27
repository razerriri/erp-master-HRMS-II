<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

    <meta charset="UTF-8">
    <title>Human Resource Management System Part 4 Compensation Planning</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    
    <!-- font Awesome -->
    <link href="${pageContext.request.contextPath}/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/styles/black	.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="${pageContext.request.contextPath}/resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css --> 
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" />
    <link rel="stylesheet" type="text/css" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/only_dashboard.css" />      
    
    <!-- data tables -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css">
   
    <!--editable-table css-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/select2.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pages/tables.css" />
    
	<!-- daterange picker -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/daterangepicker/css/daterangepicker-bs3.css" />
    
    <!-- date time picker -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datetimepicker/css/bootstrap-datetimepicker.min.css"  media="screen" />
    
    <!--select css-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/select2/select2.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/select2/select2-bootstrap.css" />
    
    <!--clock face css-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/iCheck/skins/all.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pages/formelements.css" />
    
	<!--advanced modals-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/modal/css/component.css" />
	
	<!--advanced tables-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pages/tables.css">
    
	<!--form-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/jasny-bootstrap/css/jasny-bootstrap.css" />
    
	<!-- form wizards -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/css/wizard.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/css/jquery.steps.css">

	<!-- blog list -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/tags/dist/bootstrap-tagsinput.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/blog.css" />