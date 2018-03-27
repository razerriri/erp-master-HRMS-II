<!DOCTYPE html>
<html>

<head>
   
    <%@ include file ="../includes/head.jsp"%>  
    
</head>

<body class="skin-josh">
    
    <header class="header">
 	<%@ include file="../includes/header.jsp"%>
    </header>
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
        
        <!-- Left side column. contains the logo and sidebar -->
		<%@ include file="../includes/sidebar.jsp"%>
        <!-- left-side -->
       
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1></h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Dashboard
                        </a>
                    </li>
                    <li class="active">
                        <a href="">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							New Hire
                        </a>
                    </li>
                </ol>
            </section>
            	<div class="row">
            		<div class="col-lg-12">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">
                                                New Hire
                                                </h3>

                                            </div>
                                            <div class="panel-body">
                                                <div class="col-md-4">
                                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                                        <div class="fileinput-new thumbnail img-file">
                                                            <img data-src="holder.js/100%x100%" alt="..."></div>
                                                        <div class="fileinput-preview fileinput-exists thumbnail img-max"></div>
                                                        <div>
                                                            <span class="btn btn-default btn-file">
                                                                <span class="fileinput-new">Select image</span>
                                                                <span class="fileinput-exists">Change</span>
                                                                <input type="file" name="..."></span>
                                                            <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="panel-body">
                                                        <div class="table-responsive">
                                                            <table class="table table-bordered table-striped" id="">
                                                            	<tr>
                                                                    <td>Employee Number</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Name</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Date of Birth</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Contact Number</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Email Address</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Date Hired</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Hiring Manager</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Job</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Department</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>Appointment Status</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Status</td>
                                                                    <td>
                                                                        <a href="" data-pk="1" class="editable" data-title=""></a>
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
                <div class="row">
                	<div class="panel-body">
							<div class="table-responsive">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                            <th style="text-align: left;">Checklist</th>
                                        </tr>
                                    </thead>
                                    <tbody>
										<tr>
                                            <td><input type="checkbox">  Copy of Approved Appointment</td>
                                            <td>October 9, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
										<tr>
                                            <td><input type="checkbox">  Oath of Office</td>
                                            <td>October 9, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox">  Statement of Assets and Liabilities (SALN)</td>
                                            <td>October 9, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
										<tr>
                                            <td><input type="checkbox">  Certificate of Service/Daily Time Record</td>
                                            <td>October 9, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
										<tr>
                                            <td><input type="checkbox">  Certificate/Notice of Assumption of Office</td>
                                            <td>October 10, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox">  Medical Clearance</td>
                                            <td>October 10, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
										<tr>
                                            <td><input type="checkbox">  NBI Clearance</td>
                                            <td>October 11, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
                                        <tr>
											<td><input type="checkbox">  GSIS Membership Form</td>
											<td>October 16, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox">  PhilHealth Membership Form</td>
											<td>October 16, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox">  Others S.O. #0000, S. 2017</td>
											<td>October 16, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox">  Report on Official Time</td>
                                            <td>October 17, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
										<tr>
                                            <td><input type="checkbox">  Clearance from previous office</td>
                                            <td>October 17, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox">  Certificate of last salary received from former office verified by the auditor </td>
                                            <td>October 18, 2017</td>
                                            <td style="width: 20px;"><a href="#" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#modalupdate"></span> </a></td>
                                            <td style="width: 20px;"> <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                        </tr>
                                    </tbody>
                                </table>
								<div class="todolist_list adds">
                                <form role="form" id="main_input_box">
                                    <div class="col-md-6 col-xs-6">
                                        <input id="custom_textbox" name="Item" type="text" required class="form-control" />
                                    </div>
                                    <div class="col-md-4 col-xs-4">
                                        <input type="submit" value="Add Activity" class="btn btn-info add_button" />
                                    </div>
                                </form>
                            </div>
                            </div>
                        </div>
           	 	</div>
        </aside>
        <!-- right-side -->
    </div>
    
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>

	<%@ include file ="../includes/footer.jsp"%>  
    
</body>
</html>
