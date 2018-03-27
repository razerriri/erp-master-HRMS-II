<!DOCTYPE html>
<html>

<head>
      <%@include file="../includes/head.jsp" %>
    <title>Human Resource Information System</title>
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
    <link href="${pageContext.request.contextPath}/resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="${pageContext.request.contextPath}/resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->    
    <!--page level css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/select2.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
    <!--end of page level css-->
</head>

<body class="skin-josh">

  <%@include file="../includes/header.jsp" %>
  
  <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->

<%@include file="../includes/sidebar-manager.jsp" %>
      <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>Performance Management System</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="livicon" data-name="home" data-size="18" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="#">DataTables</a>
                    </li>
                    <li class="active">Editable Datatables</li>
                </ol>
            </section>
			
			
			<!--- responsive model -->
                <div class="modal fade bs-example-modal-sm in" id="stack1" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">Stack One</h4>
                            </div>
                            <div class="modal-body">
                                <p>One fine body…</p>
                                <p>One fine body…</p>
                                <p>One fine body…</p>
                                <p>
                                    Name:
                                    <input id="name21" name="name" type="text" class="form-control">
                                </p>
                                <p>
                                    Password:
                                    <input id="name22" name="name" type="text" class="form-control">
                                </p>
                                <a class="btn btn-default" data-toggle="modal" href="#stack2">Launch modal</a>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="button" class="btn btn-primary">Ok</button>
                            </div>
                        </div>
                    </div>
                </div>
			
            <!-- Main content -->
            <section class="content">
                <!-- Second Data Table -->

 <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet box default">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="edit" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Office Performance Commitment and Review (OPCR) Form
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div id="sample_editable_1_wrapper" class="">
									
											<div class="table-scrollable">
												<table class="table table-bordered table-hover">
													<thead>
														<tr><center>
															<th><center>MFO</center></th>
															<th><center>Success<br>Indicators</center></th>
															<th><center>Allotted<br>Budget</center></th>
															<th><center>Office/Person<br>Responsible</center></th>
															<th><center>Actual<br>Accomplishments</center></th>
															<th class="col-md-1"><center>Quality</center></th>
															<th class="col-md-1"><center>Efficiency</center></th>
															<th class="col-md-1"><center>Timeliness</center></th>
															<th><center>Remarks</center></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>Strategic Priority</td>
															<td>
																<textarea class="form-control" data-autogrow=""></textarea>
															</td>
															<td>
																<input type="text" class="form-control"></div>
															</td>
															<td>
																<input type="text" class="form-control"></div>
															</td>
															<td>
																<textarea class="form-control" data-autogrow=""></textarea>
															</td>
															<td>
																<select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select>
															</td>
															<td>
																<select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select>
															</td>
															<td>
																<select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select>
															</td>
															<td>
																<textarea class="form-control" data-autogrow=""></textarea>
															</td>
														</tr>
														
														<tr>
															<td>Support Functions</td>
															<td>
																<textarea class="form-control" data-autogrow=""></textarea>
															</td>
															<td>
																<input type="text" class="form-control"></div>
															</td>
															<td>
																<input type="text" class="form-control"></div>
															</td>
															<td>
																<textarea class="form-control" data-autogrow=""></textarea>
															</td>
															<td>
																<select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select>
															</td>
															<td>
																<select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select>
															</td>
															<td>
																<select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select>
															</td>
															<td>
																<textarea class="form-control" data-autogrow=""></textarea>
															</td>
														</tr>
														</tbody>
												</table>
										</div>
										
										<br>
										
										<div class="table-scrollable">	
												<table class="table table-bordered table-hover">
													<thead>
														<th><center>Category</center></th>
														<th colspan="2"><center>MFO</center></th>
														<th colspan="5"><center>Rating</center></th>
													</thead>
													<tbody>
														<tr>
															<td>Strategic Priority</td>
															<td><input type="text" class="form-control"></td>
															<td><input type="text" class="form-control"></td>
															<td><input type="text" class="form-control"></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
														</tr>
														<tr>
															<td>Core Functions</td>
															<td><input type="text" class="form-control"></td>
															<td><input type="text" class="form-control"></td>
															<td><input type="text" class="form-control"></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
														</tr>
														<tr>
															<td>Support Functions</td>
															<td><input type="text" class="form-control"></td>
															<td><input type="text" class="form-control"></td>
															<td><input type="text" class="form-control"></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
															<td class="col-md-1"><select name="" id="select2_sample4" class="form-control select2">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select></td>
														</tr>	
														</tbody>
												</table>
											</div>
											 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-responsive button-alignment btn-danger" style="margin-bottom:7px;" data-toggle="button">Done</button>
                                </div>
								
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                        </div>
                    </div>
                </div>

            </section>
            <!-- content -->
        </aside>
        <!-- right-side -->
    </div>
    <!-- ./wrapper -->
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
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/select2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-editable.js"></script>
	
</body>
</html>
