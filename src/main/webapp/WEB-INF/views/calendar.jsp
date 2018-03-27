<!DOCTYPE html>
<html>
<head>
   
	<meta charset="UTF-8">
    <title>Calendar</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/icon-logo.png" type="image/x-icon">
    <%@ include file="includes/head.jsp" %>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="${pageContext.request.contextPath}/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="${pageContext.request.contextPath}/resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>
    <!-- end of global css -->
    <!--page level css -->
    <link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <!--end of page level css-->
</head>
<body class="skin-josh">

<%@ include file="includes/header.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@include file="includes/sidebar.jsp" %>
 
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Calendar</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="livicon" data-name="dashboard" data-size="14" data-loop="true"></i>
                            Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="calendar" data-size="14" data-loop="true"></i>
                            Calendar
                        </a>
                    </li>
                </ol>
            </section>
            
            	<section class="content">
            		<div class="row">
            				
            				<div class="col-md-3">
                            <div class="box">
                                <div class="box-title">
                                    <h3>Draggable Events</h3>
                                    <div class="pull-right box-toolbar">
                                        <a href="#" class="btn btn-link btn-xs" data-toggle="modal" data-target="#myModal">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="box-body">
                                    <div id='external-events'>
                                        <div class='external-event palette-warning'>Team Out</div>
                                        <div class='external-event palette-primary'>Product Seminar</div>
                                        <div class='external-event palette-danger'>Client Meeting</div>
                                        <div class='external-event palette-info'>Repeating Event</div>
                                        <div class='external-event palette-success'>Anniversary Celebrations</div>
                                        <p class="well no-border no-radius">
                                            <input type='checkbox' id='drop-remove' style="opacity:1 !important" />
                                            <label for='drop-remove'>remove after drop</label>
                                        </p>
                                    </div>
                                </div>
                                <div class="box-footer">
                                    <a href="#" class="btn btn-success btn-block" data-toggle="modal" data-target="#myModal">Create event</a>
                                </div>
                            </div>
            				</div>
            				
			  				<div class="col-md-9 pull-right">
	                            <div class="box">
	                                <div class="box-body">
	                                    <div id="calendar"></div>
	                                </div>
	                            </div>
                            </div>
                            
                            
			  				<div class="col-md-3 pull-right">
			  					<div class="form-group">
			  					</div>
                          
                            
                            </div>
                            
                            </div>
                            
                  				
   			</section>	
            
        </aside>
	</div>
	
   <%@include file="includes/footer.jsp" %>
     
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- global js -->
	    <script src="${pageContext.request.contextPath}/resources/vendors/jasny-bootstrap/js/jasny-bootstrap.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
	    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
         <!--livicons-->
        <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/raphael-min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/livicons-1.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/josh.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/metisMenu.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/vendors/holder-master/holder.js"></script>
        <!-- end of global js -->
        <!-- begining of page level js -->
        <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
    
    	<script type="text/javascript">
    $(document).ready(function() {
     /* initialize the external events
                 -----------------------------------------------------------------*/
        function ini_events(ele) {
            ele.each(function() {

                // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
                // it doesn't need to have a start or end
                var eventObject = {
                    title: $.trim($(this).text()) // use the element's text as the event title
                };

                // store the Event Object in the DOM element so we can get to it later
                $(this).data('eventObject', eventObject);

                // make the event draggable using jQuery UI
                $(this).draggable({
                    zIndex: 1070,
                    revert: true, // will cause the event to go back to its
                    revertDuration: 0 //  original position after the drag
                });

            });
        }
        ini_events($('#external-events div.external-event'));

        /* initialize the calendar
                 -----------------------------------------------------------------*/
        //Date for the calendar events (dummy data)
        var date = new Date();
        var d = date.getDate(),
            m = date.getMonth(),
            y = date.getFullYear();
        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            buttonText: {
                prev: "<span class='fa fa-caret-left'></span>",
                next: "<span class='fa fa-caret-right'></span>",
                today: 'today',
                month: 'month',
                week: 'week',
                day: 'day'
            },
            //Random events
            events: [{
                title: 'Team Out',
                start: new Date(y, m, 2),
                backgroundColor: "#F89A14"
            }, {
                title: 'Client Meeting',
                start: new Date(y, m, d - 2),
                end: new Date(y, m, d - 5),
                backgroundColor: "#418BCA"
            }, {
                title: 'Repeating Event',
                start: new Date(y, m, 6)
            }, {
                title: 'Birthday Party',
                start: new Date(y, m, 12),
                backgroundColor: "#00bc8c"
            }, {
                title: 'Product Seminar',
                start: new Date(y, m, 16),
                backgroundColor: "#A9B6BC"
            }, {
                title: 'Anniversary Celebrations',
                start: new Date(y, m, 26),
                backgroundColor: "#F89A14"
            }, {
                title: 'Client Meeting',
                start: new Date(y, m, 10),
                backgroundColor: "#5bc0de"
            }],
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function(date, allDay) { // this function is called when something is dropped

                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');

                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);

                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;
                copiedEventObject.backgroundColor = $(this).css("background-color");
                copiedEventObject.borderColor = $(this).css("border-color");

                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

            }
        });

        /* ADDING EVENTS */
        var currColor = "#418BCA"; //default
        //Color chooser button
        var colorChooser = $("#color-chooser-btn");
        $("#color-chooser > li > a").click(function(e) {
            e.preventDefault();
            //Save color
            currColor = $(this).css("background-color");
            //Add color effect to button
            colorChooser
                .css({
                    "background-color": currColor,
                    "border-color": currColor
                })
                .html($(this).text() + ' <span class="caret"></span>');
        });
        $("#add-new-event").click(function(e) {
            e.preventDefault();
            //Get value and make sure it is not null
            var val = $("#new-event").val();
            if (val.length == 0) {
                return;
            }

            //Create event
            var event = $("<div />");
            event.css({
                "background-color": currColor,
                "border-color": currColor,
                "color": "#fff"
            }).addClass("external-event");
            event.html(val);
            $('#external-events').prepend(event);

            //Add draggable funtionality
            ini_events(event);

            //Remove event from text input
            $("#new-event").val("");
        });
    });
    </script>
</body>
</html>
