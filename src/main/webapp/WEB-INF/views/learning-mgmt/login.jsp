<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <title>Learning Management System | Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- global level css -->
    <link href="<c:url value="/resourcess/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- end of global level css -->
    <!-- page level css -->
    <link href="<c:url value="/resources/css/pages/login.css"/>" rel="stylesheet" type="text/css" />
    <!-- end of page level css -->
</head>

<body>
    <div class="container">
        <div class="row vertical-offset-100">
            <div class="col-sm-6 col-sm-offset-3  col-md-5 col-md-offset-4 col-lg-4 col-lg-offset-4">
                <div id="container_demo">
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <a class="hiddenanchor" id="toforgot"></a>
                    <div id="wrapper">
                    <form:form name="form"  action="LoginServlet" method="post" onsubmit="return validate()" modelAttribute="LoginModel"><fieldset>
                   
                        <div id="login" class="animate form">
                           
                                <h3 class="black_bg">
                                     <img src="<c:url value="/resources/img/logo.png"/>" alt="Logo">
                                    <br>Log in</h3>
                                <p>
                                    <label style="margin-bottom:0px;" for="username" class="uname"> <i class="livicon" data-name="user" data-size="16" data-loop="true" data-c="#3c8dbc" data-hc="#3c8dbc"></i>
                                        E- mail or Username
                                    </label>
                                    <input id="username" name="username" required type="text" placeholder="username or e-mail" />
                                </p>
                                <p>
                                    <label style="margin-bottom:0px;" for="password" class="youpasswd"> <i class="livicon" data-name="key" data-size="16" data-loop="true" data-c="#3c8dbc" data-hc="#3c8dbc"></i>
                                        Password
                                    </label>
                                    <input id="password" name="password" required type="password" placeholder="eg. X8df!90EO" />
                                </p>
                                <p class="login button">
                                    <input type="submit" value="Login" class="btn btn-success" />
                                </p>
                                <p style="margin-left:75px;"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></p>
                        </div>
                        </fieldset>
                                    </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- global js -->
     <script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"> </script>
    <!--livicons-->
     <script src="<c:url value="/resources/vendors/livicons/minified/raphael-min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/vendors/livicons/minified/livicons-1.4.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/josh.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/metisMenu.js"/>" type="text/javascript"> </script>
    <script src="<c:url value="/resources/vendors/holder-master/holder.js"/>" type="text/javascript"></script>
    <!-- end of global js -->
    <script> 
function validate()
{ 
 var username = document.form.username.value; 
 var password = document.form.password.value;
 
 if (username==null || username=="")
 { 
 alert("Username cannot be blank"); 
 return false; 
 }
 else if(password==null || password=="")
 { 
 alert("Password cannot be blank"); 
 return false; 
 } 
}
</script>
</body>
</html>
