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
                        <a href="">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Dashboard
                        </a>
                    </li>
                    <li class="active">
                        <a href="email.html">
                            <i class="livicon" data-name="mail" data-size="18" data-color="#333" data-hovercolor="#333" data-loop="true"></i>
							<span class="title">Message</span>
                        </a>
                    </li>
                </ol>
            </section>
            <div class="row">
               <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="mail" data-size="18" data-c="#fff" data-hc="#fff" data-loop="true"></i>
									Send Message
                                </h3>
                            </div>
							<div class="panel-body">
								<form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
									<div class="form-group">
										<label class="col-md-3 control-label" for="emailto">To:</label>
										<div class="col-md-6">
										<input id="emailto"  name="emailto" placeholder="" type="text" tabindex="1" class="form-control required">
										</div>
									</div>
									<div class="clear"></div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="emailsub">Subject:</label>
										<div class="col-md-6">
										<input id="emailsub"  name="emailsub" placeholder="" type="text" tabindex="1" class="form-control required">
										</div>
									</div>
									<div class="clear"></div>
									<div class="form-group">
                                        <label class="col-md-3 control-label" for="docfileupload">Attach File:</label>
                                        <div class="col-md-9 mar-top">
                                        <input type="file" id="docfileupload" name="docfileupload" multiple></div>
                                    </div>
									<div class="clear"></div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="chkprovider">Message:</label>
										<div class="col-md-6">
										<div class='box-body'>
                                        <form>
                                            <textarea class="textarea textarea_home" placeholder="Write mail content here"></textarea>
                                        </form>
										</div>
										</div>
									</div>
									<br />
                                    <div class="pull-right">
                                        <button class="btn-success btn">Send</button>
										<button class="btn-danger btn">Discard</button>
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
