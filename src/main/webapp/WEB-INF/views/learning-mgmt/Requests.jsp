<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form action="save" modelAttribute="modelBindUser" method="post">
		<table>
			<tr>
				<td>User ID:</td>
				<td><form:input type="text" path="user_id" name="id" /></td>
			</tr>

			<tr>
				<td>Username:</td>
				<td><form:input type="text" path="user_name" /></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><form:input type="password" path="pass_word" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Submit" name="save"></td>
				<td><input type="submit" value="Update" name="update"></td>
				<td><input type="submit" value="Delete" name="delete"></td>
				<td><input type="submit" value="Find User" name="findByID"></td>
				<td><input type="submit" value="Select All" name="selectAll"></td>
			</tr>
		</table>
	</form:form>

	<center>
		<table border="2" width="70%" cellpadding="2"
			style="text-align: center">

			<tr>
				<th>User ID</th>
				<th>Username</th>
				<th>Password</th>
			</tr>

			<c:forEach var="user" items="${userList}">

				<tr>
					<td>${user.user_id}</td>
					<td>${user.user_name}</td>
					<td>${user.pass_word}</td>

				</tr>
			</c:forEach>

		</table>
	</center>

	
	<select>
	<c:forEach var="user" items="${dropDown}">  
   	  
   	<option value="${user.user_id}">
           <c:out value="${user.user_id}"/>
    </option>
	</c:forEach>
	
	</select>




</body>
</html> --%><%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>

<head>
    <meta charset="UTF-8">
    <title>HR Part 3 | Requests</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="<c:url value="/resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"/></script>
    <script src="<c:url value="/resources/https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"/></script>
  
    <![endif]-->
    <link href="<c:url value="/resources/css/only_dashboard.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/vendors/animate/animate.min.css" />" rel="stylesheet">
    <link media="all" href="<c:url value="/resources/vendors/jvectormap/jquery-jvectormap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/pages/calendar_custom.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/vendors/fullcalendar/css/fullcalendar.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/metisMenu.css" />" rel="stylesheet"type="text/css">
    <link href="<c:url value="/resources/css/panel.css" />" rel="stylesheet"type="text/css">
    <link href="<c:url value="/resources/css/styles/black	.css" />" rel="stylesheet" type="text/css" id="colorscheme">
    <link href="<c:url value="/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" />" rel="stylesheet"type="text/css">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <!--end of page level css-->
</head>

<body class="skin-josh">
    <header class="header">
        <a href="<c:url value="/resources/index.html" />"class="logo">
            <img src="img/logo-two.png" alt="Logo">
        </a>		
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <div class="navbar-right">
                <ul class="nav navbar-nav">
					<li>
						<input class="form-control" id="input-text-1" placeholder="Search..." style="width:250px; margin-right:435px; margin-top:8px">		
					</li>
					<li>
						<<a href="<c:url value="/resources/index.html" />">
							<i class="livicon" data-name="home" data-size="28" data-c="#418bca" data-hc="#418bca" data-loop="true"></i>
							<span class="title"></span>
						</a>
					</li>
					<li class="dropdown-messages-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="doc-portrait" data-loop="true" data-color="#00bc8c" data-hovercolor="#00bc8c" data-size="28"></i>
                        </a>
						
					</li>
					<li class="dropdown-messages-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="table" data-loop="true" data-color="#67c5df" data-hovercolor="#67c5df" data-size="28"></i>
                        </a>
						<ul class="dropdown-menu dropdown-messages pull-right">
							<li class="unread message">
                                <a href="javascript:;" class="message">
									<i class="fa fa-angle-double-right"></i>
                                    <strong>Approve Timesheet</strong>
                                </a>
                            </li>
							<li class="unread message">
                                <a href="javascript:;" class="message">
									<i class="fa fa-angle-double-right"></i>
                                    <strong>Set Rate Per Hour</strong>
                                </a>
                            </li>
							<li class="unread message">
                                <a href="javascript:;" class="message">
									<i class="fa fa-angle-double-right"></i>
                                    <strong>SubMenu3</strong>
                                </a>
                            </li>							
						</ul>
					</li>
					<li class="dropdown-messages-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="barchart" data-loop="true" data-color="#f79a14" data-hovercolor="#f79a14" data-size="28"></i>
                        </a>
						<ul class="dropdown-menu dropdown-messages pull-right">
							<li class="unread message">
                                <a href="javascript:;" class="message">
									<i class="fa fa-angle-double-right"></i>
                                    <strong>SubMenu1</strong>
                                </a>
                            </li>
							<li class="unread message">
                                <a href="javascript:;" class="message">
									<i class="fa fa-angle-double-right"></i>
                                    <strong>SubMenu2</strong>
                                </a>
                            </li>
							<li class="unread message">
                                <a href="javascript:;" class="message">
									<i class="fa fa-angle-double-right"></i>
                                    <strong>SubMenu3</strong>
                                </a>
                            </li>							
						</ul>
					</li>
					<li>
						<a href="<c:url value="/resources/index.html" />">
							<i class="livicon" data-name="settings" data-size="28" data-c="#ee6f6c" data-hc="#ee6f6c" data-loop="true"></i>
							<span class="title"></span>
						</a>
					</li>					
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="message-flag" data-loop="true" data-color="#42aaca" data-hovercolor="#42aaca" data-size="28"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages pull-right">
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Riot Zeast</strong>
                                        <br>Hello, You there?
                                        <br>
                                        <small>8 minutes ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>John Kerry</strong>
                                        <br>Can we Meet ?
                                        <br>
                                        <small>45 minutes ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Jenny Kerry</strong>
                                        <br>Dont forgot to call...
                                        <br>
                                        <small>An hour ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Ronny</strong>
                                        <br>Hey! sup Dude?
                                        <br>
                                        <small>3 Hours ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="footer">
                                <a href="#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="livicon" data-name="bell" data-loop="true" data-color="#e9573f" data-hovercolor="#e9573f" data-size="28"></i>
                            <span class="label label-warning">7</span>
                        </a>
                        <ul class=" notifications dropdown-menu">
                            <li class="dropdown-title">You have 7 notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">after a long time</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Just Now
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="gift" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">Jef's Birthday today</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Few seconds ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="dashboard" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">out of space</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            8 minutes ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon bg-aqua" data-n="hand-right" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">New friend request</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            An hour ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon danger" data-n="shopping-cart-in" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">On sale 2 products</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            3 Hours ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="image" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">Lee Shared your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Yesterday
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="thumbs-up" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">David liked your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            2 July 2014
                                        </small>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img data-src="holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
                            <div class="riot">
                                <div>
                                    Riot
                                    <span>
                                        <i class="caret"></i>
                                    </span>
                                </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header bg-light-blue">
                                <img data-src="holder.js/90x90/#fff:#000" class="img-responsive img-circle" alt="User Image">
                                <p class="topprofiletext">Riot Zeast</p>
                            </li>
                            <!-- Menu Body -->
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="user" data-s="18"></i>
                                    My Profile
                                </a>
                            </li>
                            <li role="presentation"></li>
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="gears" data-s="18"></i>
                                    Account Settings
                                </a>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                   <a href="<c:url value="/resources/lockscreen.html" />">
                                        <i class="livicon" data-name="lock" data-s="18"></i>
                                        Lock
                                    </a>
                                </div>
                                <div class="pull-right">
                                    <a href="<c:url value="/resources/login.html" />">
                                        <i class="livicon" data-name="sign-out" data-s="18"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="left-side sidebar-offcanvas collapse-left">
            <section class="sidebar ">
                <div class="page-sidebar  sidebar-nav">
                    <div class="nav_icons">
                        <ul class="sidebar_threeicons">
                            <li>
                                <a href="<c:url value="/resources/form_builder.html" />">
                                    <i class="livicon" data-name="hammer" title="Form Builder 1" data-loop="true" data-color="#42aaca" data-hc="#42aaca" data-s="25"></i>
                                </a>
                            </li>
                            <li>
                                <a href="<c:url value="/resources/form_builder2.html" />">
                                    <i class="livicon" data-name="list-ul" title="Form Builder 2" data-loop="true" data-color="#e9573f" data-hc="#e9573f" data-s="25"></i>
                                </a>
                            </li>
                            <li>
                              <a href="<c:url value="/resources/buttonbuilder.html" />">
                                    <i class="livicon" data-name="vector-square" title="Button Builder" data-loop="true" data-color="#f6bb42" data-hc="#f6bb42" data-s="25"></i>
                                </a>
                            </li>
                            <li>
                                  <a href="<c:url value="/resources/gridmanager.html" />">
                                    <i class="livicon" data-name="new-window" title="Page Builder" data-loop="true" data-color="#37bc9b" data-hc="#37bc9b" data-s="25"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <!-- BEGIN SIDEBAR MENU -->
                    <ul id="menu" class="page-sidebar-menu">
                        <li class="active">
                            <a href="<c:url value="/resources/index.html" />">
                                <i class="livicon" data-name="home" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="medal" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
                                <span class="title">Builders</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="<c:url value="/resources/form_builder.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Form Builder
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/form_builder2.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Form Builder 2
                                    </a>
                                </li>
                                <li>
                                     <a href="<c:url value="/resources/buttonbuilder.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Button Builder
                                    </a>
                                </li>
                                <li>
                                   <a href="<c:url value="/resources/gridmanager.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Page Builder
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="doc-portrait" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                <span class="title">Forms</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                   <a href="<c:url value="/resources/form_examples.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Form Examples
                                    </a>
                                </li>
                                <li>
                                <a href="<c:url value="/resources/editor.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Form Editors
                                    </a>
                                </li>
                                <li>
                                 <a href="<c:url value="/resources/validation.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Form Validation
                                    </a>
                                </li>
                                <li>
                                   <a href="<c:url value="/resources/formelements.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Form Elements
                                    </a>
                                </li>
                                 <li>
                           		 <a href="<c:url value="/resources/form_layouts.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Form Layouts
                                    </a>
                                </li>
                                <li>
                                  <a href="<c:url value="/resources/formwizard.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Form Wizards
                                    </a>
                                </li>
                                <li>
                                   <a href="<c:url value="/resources/accordionformwizard.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Accordion Wizards
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="brush" data-c="#F89A14" data-hc="#F89A14" data-size="18" data-loop="true"></i>
                                <span class="title">UI Features</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="<c:url value="/resources/animatedicons.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Animated Icons
                                    </a>
                                </li>
                                <li>
                                   <a href="<c:url value="/resources/buttons.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Buttons
                                    </a>
                                </li>
                                <li>
                                	<a href="<c:url value="/resources/advanced_buttons.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Advanced Buttons
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/tabs_accordions.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Tabs and Accordions
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/panels.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Panels
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/icon.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Font Icons
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/color.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Color Picker Slider
                                    </a>
                                </li>
                                <li>
                                	<a href="<c:url value="/resources/grid.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Grid Layout
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/carousel.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Carousel
                                    </a>
                                </li>
                                <li>
                                   <a href="<c:url value="/resources/advanced_modals.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Advanced Modals
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/tagsinput.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Tags Input
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/nestable.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Nestable List
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/tagsinput.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Tags Input
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/nestable.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Nestable List
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/resources/toastr.html" />">
                                        <i class="fa fa-angle-double-right"></i>
                                        Toastr Notifications
                                    </a>
                                </li>
                                <li>
                                    <a href="notifications.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Notifications
                                    </a>
                                </li>
                                <li>
                                    <a href="session_timeout.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Session Timeout
                                    </a>
                                </li>
                                <li>
                                    <a href="portlet_draggable.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Draggable Portlets
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="lab" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i>
                                <span class="title">UI Components</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="general.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        General Components
                                    </a>
                                </li>
                                <li>
                                    <a href="pickers.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Pickers
                                    </a>
                                </li>
                                <li>
                                    <a href="x-editable.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        X-editable
                                    </a>
                                </li>
                                <li>
                                    <a href="timeline.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Timeline
                                    </a>
                                </li>
                                <li>
                                    <a href="transitions.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Transitions
                                    </a>
                                </li>
                                <li>
                                    <a href="sliders.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Sliders
                                    </a>
                                </li>
                                <li>
                                    <a href="knob.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Circles Sliders
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="table" data-c="#418BCA" data-hc="#418BCA" data-size="18" data-loop="true"></i>
                                <span class="title">Tables</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="simple_table.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Simple tables
                                    </a>
                                </li>
                                <li>
                                    <a href="advanced_tables.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Advanced Data Tables
                                    </a>
                                </li>
                                <li>
                                    <a href="editable_table.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Editable Datatables
                                    </a>
                                </li>
                                <li>
                                    <a href="responsive_tables.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Responsive Datatables
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="barchart" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
                                <span class="title">Charts</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="charts.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Flot Charts
                                    </a>
                                </li>
                                <li>
                                    <a href="piecharts.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Pie Charts
                                    </a>
                                </li>
                                <li>
                                    <a href="charts_animation.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Animated Charts
                                    </a>
                                </li>
                                <li>
                                    <a href="jscharts.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        JS Charts
                                    </a>
                                </li>
                                <li>
                                    <a href="sparklinecharts.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Sparkline Charts
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="calendar.html">
                                <i class="livicon" data-c="#F89A14" data-hc="#F89A14" data-name="calendar" data-size="18" data-loop="true"></i>
                                <span class="badge badge-danger">7</span>
                                Calendar
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="mail" data-size="18" data-c="#5bc0de" data-hc="#5bc0de" data-loop="true"></i>
                                <span class="title">Email</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="mail_box.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Inbox
                                    </a>
                                </li>
                                <li>
                                    <a href="compose.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Compose
                                    </a>
                                </li>
                                <li>
                                    <a href="view_mail.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Single Mail
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="tasks.html">
                                <i class="livicon" data-c="#EF6F6C" data-hc="#EF6F6C" data-name="list-ul" data-size="18" data-loop="true"></i>
                                <span class="badge badge-danger">10</span>
                                Tasks
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="image" data-c="#418BCA" data-hc="#418BCA" data-size="18" data-loop="true"></i>
                                <span class="title">Gallery</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="gallery.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Gallery
                                    </a>
                                </li>
                                <li>
                                    <a href="masonry_gallery.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Masonry Gallery
                                    </a>
                                </li>
                                <li>
                                    <a href="dropzone.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Dropzone
                                    </a>
                                </li>
                                <li>
                                    <a href="imagecropping.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Image Cropping
                                    </a>
                                </li>
                                <li>
                                    <a href="multiple_upload.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Multiple File Upload
                                    </a>
                                </li>
                                <li>
                                    <a href="imgmagnifier.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Image Magnifier
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="users" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
                                <span class="title">Users</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="users.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Users
                                    </a>
                                </li>
                                <li>
                                    <a href="adduser.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Add New User
                                    </a>
                                </li>
                                <li>
                                    <a href="view_user.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        View User
                                    </a>
                                </li>
                                <li>
                                    <a href="deleted_users.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Deleted Users
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="map" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                <span class="title">Maps</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="googlemaps.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Google Maps
                                    </a>
                                </li>
                                <li>
                                    <a href="vectormaps.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Vector Maps
                                    </a>
                                </li>
                                <li>
                                    <a href="advancedmaps.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Advanced Maps
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="comment" data-c="#F89A14" data-hc="#F89A14" data-size="18" data-loop="true"></i>
                                <span class="title">Blog</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="blog_list.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Blog List
                                    </a>
                                </li>
                                <li>
                                    <a href="blog_details.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Blog Details
                                    </a>
                                </li>
                                <li>
                                    <a href="add_newblog.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Add New Blog
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="move" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i>
                                <span class="title">News</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="news.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        News
                                    </a>
                                </li>
                                <li>
                                    <a href="news_item.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        News Details
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="flag" data-c="#418bca" data-hc="#418bca" data-size="18" data-loop="true"></i>
                                <span class="title">Pages</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="lockscreen.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Lockscreen
                                    </a>
                                </li>
                                <li>
                                    <a href="invoice.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Invoice
                                    </a>
                                </li>
                                <li>
                                    <a href="login.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Login
                                    </a>
                                </li>
                                <li>
                                    <a href="login2.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Login 2
                                    </a>
                                </li>
                                <li>
                                    <a href="login.html#toregister">
                                        <i class="fa fa-angle-double-right"></i>
                                        Register
                                    </a>
                                </li>
                                <li>
                                    <a href="register2.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Register 2
                                    </a>
                                </li>
                                <li>
                                    <a href="404.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        404 Error
                                    </a>
                                </li>
                                <li>
                                    <a href="500.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        500 Error
                                    </a>
                                </li>
                                <li>
                                    <a href="blank.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Blank Page
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side stretch strech">
            <!-- Main content -->
            <section class="content-header">
                <h1>Welcome to Dashboard</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Home
                        </a>
                    </li>
                </ol>
            </section>
           
           
                  <div class="col-lg-6 col-md-8 col-sm-6">
                        <div class="panel panel-border">
                            <div class="panel-heading border-light">
                                <h4 class="panel-title">
                                    <i class="livicon" data-name="calendar" data-size="16" data-loop="true" data-c="#333" data-hc="#333"></i>
                                   Shift Schedule Calendar
                                </h4>
                                <span class="pull-right">
                                    <i class="glyphicon glyphicon-chevron-up showhide clickable"></i>
                                    <i class="glyphicon glyphicon-remove removepanel clickable"></i>
                                </span>
                            </div>
                            <div class="panel-body">
                            <form:form action="requests">
                        
                                <div id='external-events'></div>
                                <div id="calendar"></div>
                                <div class="box-footer pad-5">
								
                                    <a href="#" class="btn btn-success pull-left" style="width:200px; margin-top:5px;" data-toggle="modal" data-target="#myModal1">Request Shift</a>
									<a href="#" class="btn btn-success" style="width:200px; margin-left:10px; margin-top:5px;" data-toggle="modal" data-target="#myModal2">Request Shift Exchange</a>
									<a href="#" class="btn btn-success pull-right" style="width:200px; margin-top:5px" data-toggle="modal" data-target="#myModal3">Request Day-off Exchange</a>
							
                                </div>
                                <!-- Modal -->
                                <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel1">
                                                    <i class="fa fa-plus"></i>
                                                    Request Shift
                                                </h4>
                                            </div>
                                            <div class="modal-body">
											
                                                <div class="input-group">
												<label class="col-md-4 control-label" for="name">Shift Type:</label>
												<input id="dropdown" name="name" type="text" placeholder="Shift Type" class="form-control">
												<label class="col-md-4 control-label" for="name">Date Range:</label>
												<input id="name" name="name" type="name" placeholder="Date Range" class="form-control">
												
                                                    
                                                    
                                                    <!-- /btn-group --> </div>
                                                <!-- /input-group --> </div>
                                            <div class="modal-footer">
												<button type="button" class="btn btn-primary" id="add-new-event" data-dismiss="modal">
                                                    <i class="fa fa-check"></i>
                                                    Submit
                                                </button>
                                                <button type="button" class="btn btn-danger"  data-dismiss="modal">
                                                    Cancel
                                                    <i class="fa fa-times"></i>
                                                </button>
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
								
								    <!-- Modal -->
                                <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel2">
                                                    <i class="fa fa-plus"></i>
                                                    Request Shift Exchange
                                                </h4>
                                            </div>
                                            <div class="modal-body">
											
                                                <div class="input-group">
												<label class="col-md-4 control-label" for="name">Exchange shift with:</label>
												<input id="dropdown" name="name" type="text" placeholder="Employee Name" class="form-control">
												<label class="col-md-2 control-label" for="name">Shift:</label>
												<input id="name" name="name" type="name" placeholder="Assigned Shift" class="form-control">
												<label class="col-md-4 control-label" for="name">Reasons (Optional):</label>
												<textarea class="form-control" rows="2"></textarea>
                                                    
                                                    
                                                    <!-- /btn-group --> </div>
                                                <!-- /input-group --> </div>
                                            <div class="modal-footer">
												<button type="button" class="btn btn-primary" id="add-new-event" data-dismiss="modal">
                                                    <i class="fa fa-check"></i>
                                                    Submit
                                                </button>
                                                <button type="button" class="btn btn-danger"  data-dismiss="modal">
                                                    Cancel
                                                    <i class="fa fa-times"></i>
                                                </button>
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
								
										    <!-- Modal3-->
                                <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel3">
                                                    <i class="fa fa-plus"></i>
                                                    Request Day-off Exchange
                                                </h4>
                                            </div>
                                            <div class="modal-body">
											
                                                <div class="input-group">
												<label class="col-md-4 control-label" for="name">Exchange Day-off with:</label>
												<input id="dropdown" name="name" type="text" placeholder="Employee Name" class="form-control">
												<label class="col-md-2 control-label" for="name">Day-off:</label>
												<input id="name" name="name" type="name" placeholder="Assigned Day-off" class="form-control">
												<label class="col-md-4 control-label" for="name">Reasons (Optional):</label>
												<textarea class="form-control" rows="2"></textarea>
                                                    
                                                    
                                                    <!-- /btn-group --> </div>
                                                <!-- /input-group --> </div>
                                            <div class="modal-footer">
												<button type="button" class="btn btn-primary" id="add-new-event" data-dismiss="modal">
                                                    <i class="fa fa-check"></i>
                                                    Submit
                                                </button>
                                                <button type="button" class="btn btn-danger"  data-dismiss="modal">
                                                    Cancel
                                                    <i class="fa fa-times"></i>
                                                </button>
                                               </form:form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <section class="content">
           <div class="col-lg-6 col-md-8 col-sm-6">
                        <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box success">
                            <div class="portlet-title" style="height:45px">
                                <div class="caption">
                                    <i class="livicon" data-name="mail" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Requests
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-bordered table-advance table-hover">
                                        <thead>
                                            <tr>
                                                <th>
                                                    Request Type
                                                </th>
                                                <th class="hidden-xs">
                                                    Name
                                                </th>
                                                <th>
                                                    Date
                                                </th>
                                                <th>
													Status
												</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="success"></div>
                                                    <a href="#">Shift Exchange</a>
                                                </td>
                                                <td class="hidden-xs">Marcio</td>
                                                <td>Aug 22, 2017</td>
                                                <td>
                                                   <span class="label label-sm label-success">Approved</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="info"></div>
                                                    <a href="#">Shift</a>
                                                </td>
                                                <td class="hidden-xs">Alex</td>
                                                <td>Aug 29, 2017</td>
                                                <td>
                                                   <span class="label label-sm label-success">Approved</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="success"></div>
                                                    <a href="#">Day-off Exchange</a>
                                                </td>
                                                <td class="hidden-xs">Chris
												</td>
                                                <td>Sep 05, 2017</td>
                                                <td>
                                                  <span class="label label-sm label-success">Approved</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="warning"></div>
                                                    <a href="#">Day-off Exchange</a>
                                                </td>
                                                <td class="hidden-xs">David</td>
                                                <td>Sep 10, 2017</td>
                                                <td>
                                                  <span class="label label-sm label-info">pending</span>
                                                </td>
                                            </tr>
											        <tr>
                                                <td class="highlight">
                                                    <div class="success"></div>
                                                    <a href="#">Shift Exchange</a>
                                                </td>
                                                <td class="hidden-xs">Ronald</td>
                                                <td>Sep 12, 2017</td>
                                                <td>
                                                    <span class="label label-sm label-info">pending</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="info"></div>
                                                    <a href="#">Shift</a>
                                                </td>
                                                <td class="hidden-xs">Brian</td>
                                                <td>Sep 16, 2017</td>
                                                <td>
                                                     <span class="label label-sm label-info">pending</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="success"></div>
                                                    <a href="#">Day-off Exchange</a>
                                                </td>
                                                <td class="hidden-xs">Matt
												</td>
                                                <td>Sep 20, 2017</td>
                                                <td>
                                                  <span class="label label-sm label-info">pending</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="warning"></div>
                                                    <a href="#">Shift Exchange</a>
                                                </td>
                                                <td class="hidden-xs">Yancy</td>
                                                <td>Oct 04, 2017</td>
                                                <td>
                                                  <span class="label label-sm label-info">pending</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
								</div>
                            </div>
                        </div>
                        <!-- END SAMPLE TABLE PORTLET-->
                    </div>
                    </section>       
        </aside>
        <!-- right-side -->
    </div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
  

 
	<script language="javascript" type="text/javascript" src=></script>
	<script language="javascript" type="text/javascript" src=""></script>
	<script language="javascript" type="text/javascript" src=""></script>
	<script language="javascript" type="text/javascript" src="<c:url value="/resources/js/pages/custompiecharts.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/charts/jquery.flot.resize.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/charts/jquery.flot.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="vendors/charts/jquery.flot.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/pages/custompiecharts.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/dashboard.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/jscharts/Chart.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/countUp/countUp.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/charts/jquery.sparkline.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/charts/jquery.flot.resize.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/charts/jquery.flot.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/fullcalendar/calendarcustom.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/fullcalendar/fullcalendar.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/charts/jquery.easypiechart.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/charts/easypiechart.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/todolist.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/holder-master/holder.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/metisMenu.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/josh.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/livicons/minified/livicons-1.4.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/vendors/livicons/minified/raphael-min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/metisMenu.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/metisMenu.js" />"></script>
    <script language="javascript" type="text/javascript" src="<c:url value="/resources/js/metisMenu.js" />"></script>
    <!-- end of page level js -->
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
</body>
</html>
