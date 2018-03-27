<!DOCTYPE html>
<html>

<head>

	<%@ include file ="../includes/head.jsp" %>
 
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
                <h1>NEW HIRE ON BOARD</h1>
                <ol class="breadcrumb">
                   <li class="active">
                        <a href="/erp/hrms/newhireonboard/nhindex/">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Dashboard
                        </a>
                    </li>
      				<li class="active">
                        <a href="/erp/hrms/newhireonboard/checklist/">
                            <i class="livicon" data-name="list-ul" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Checklist
                        </a>
                    </li>
                    <li class="active">
                        <a href="/erp/hrms/newhireonboard/cl_content/">
                            <i class="livicon" data-name="list-ol" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Checklist Content
                        </a>
                    </li>
                </ol>
            </section>
                <div class="row">
                     <div class="col-md-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet box primary">
                            
                            <div class="portlet-body">
                                <div class="table-toolbar">
                                    <div class="btn-group">
                                        <a class="btn btn-primary btn-large" data-toggle="modal" data-href="#responsive" href="#responsive" style="float: right">Add Checklist <i class="fa fa-plus"></i></a>
                                    </div>
                                    <div class="btn-group pull-right">
                                        <button class="btn dropdown-toggle btn-primary" data-toggle="dropdown">
                                            Tools
                                            <i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="#">Print</a>
                                            </li>
                                            <li>
                                                <a href="#">Save as PDF</a>
                                            </li>
                                            <li>
                                                <a href="#">Export to Excel</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="sample_editable_1_wrapper" class="">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">Checklist ID</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                Checklist Number
                                            : activate to sort column ascending" style="width: 222px;">Checklist Number</th>
                                            	<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                New Hire ID
                                            : activate to sort column ascending" style="width: 222px;">New Hire ID</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                            	<td></td>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                	<center>
													<button type="button" class="btn btn-info"><a href= ""><i class="glyphicon glyphicon-eye-open"></i></a></button>
													<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-edit"></i></button>
													<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash"></i></button>
													</center>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                        </div>
                    </div>
                <!--- responsive model -->
                <div class="modal fade in" id="responsive" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Add Checklist</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col">
                                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
									       <div class="form-group">
										      <label class="col-md-3 control-label" for="newhireid">New Hire ID</label>
										      <div class="col-md-6">
										      <input  id="cl_nhid"  name="cl_nhid" type="number" class="form-control">
										      </div>
									       </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">  
                                <button type="button" class="btn btn-primary">Save</button>
                                <button type="button" data-dismiss="modal" class="btn btn-danger">Cancel</button>
                                <button type="button" class="btn btn-success">Reset</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END modal-->
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
