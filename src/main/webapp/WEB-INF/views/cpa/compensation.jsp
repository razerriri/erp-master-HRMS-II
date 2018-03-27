<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head><%@ include file="../includes/head.jsp" %>
   </head>
   <body class="skin-josh">
      <%@include file="../includes/header.jsp" %>
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <!-- Left side column. contains the logo and sidebar --><%@include file="../includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <!--section starts-->
               <h1>Compensation Plan</h1>
               <ol class="breadcrumb">
                  <li>
                     <a href="index">
                     <i class="livicon" data-name="home" data-size="15" data-loop="true"></i>
                     Home
                     </a>
                  </li>
                  <li>
                     <a href="#">Compensations</a>
                  </li>
               </ol>
            </section>
            <section class="content paddingleft_right15">
               <div class="row">
                  <div class="col-lg-15">
                     <div class="panel panel-primary filterable">
                        <div class="panel-heading clearfix  ">
                           <div class="panel-title pull-left">
                              <div class="caption">
                                 <i class="livicon" data-name="money" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                 Compensation
                              </div>
                           </div>
                        </div>
                        <div class="panel-body" >
                           <div align="left">
                              <ul class="nav nav-tabs faq-cat-tabs">
                                 <li class="active">
                                    <a href="#faq-cat-1" data-toggle="tab">Base Pay</a>
                                 </li>
                                 <li>
                                    <a href="#faq-cat-2" data-toggle="tab">Other Compensations</a>
                                 </li>
                                 <li>
                                    <a href="#faq-cat-3" data-toggle="tab">Total Compensation</a>
                                 </li>
                              </ul>
                           </div>
                           <br>
                           <br>
                           <div class="tab-content faq-cat-content">
                              <div class="tab-pane active in fade" id="faq-cat-1">
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
                                          <th>Actions</th>
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
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
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
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2001-00221</td>
                                          <td>Pablo Escobar</td>
                                          <td>Instructor</td>
                                          <td>II</td>
                                          <td>Faculty - College</td>
                                          <td>10/20/2005</td>
                                          <td>13</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>IV</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>13</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00421</td>
                                          <td>Rebecca Black</td>
                                          <td>Instructor</td>
                                          <td>I</td>
                                          <td>Faculty - College</td>
                                          <td>2/21/2005</td>
                                          <td>12</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-000021</td>
                                          <td>Rebecca Black</td>
                                          <td>Instructor</td>
                                          <td>II</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>13</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Instructor</td>
                                          <td>III</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>14</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Assistant Professor</td>
                                          <td>I</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>15</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Assistant Professor</td>
                                          <td>II</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>16</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Assistant Professor</td>
                                          <td>III</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>17</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Assistant Professor</td>
                                          <td>IV</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>18</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Associate Professor</td>
                                          <td>I</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>19</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Associate Professor</td>
                                          <td>II</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>20</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Associate Professor</td>
                                          <td>III</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>21</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Associate Professor</td>
                                          <td>III</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>21</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Associate Professor</td>
                                          <td>IV</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>22</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Associate Professor</td>
                                          <td>V</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>23</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>I</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>24</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>I</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>24</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>II</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>25</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>III</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>26</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>IV</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>27</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>V</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>28</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>29</td>
                                          <td>Hourly</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>University Professor</td>
                                          <td>--</td>
                                          <td>Faculty - College</td>
                                          <td>1/11/2003</td>
                                          <td>30</td>
                                          <td>Hourly</td>
                                          <td>PHP 60,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user" ></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </div>
                              <div class="tab-pane fade" id="faq-cat-2">
                                 <table class="table table-striped table-responsive" id="table2">
                                    <thead>
                                       <tr class="filters">
                                          <th>Employee Name</th>
                                          <th>Job Title</th>
                                          <th>Job Level</th>
                                          <th>Department</th>
                                          <th>Hire date</th>
                                          <th>Performance Rating</th>
                                          <th>Compensation Type</th>
                                          <th>Value</th>
                                          <th>Actions</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>5 - Outstanding</td>
                                          <td>13th Month pay</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>Cash Advance</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>Performance Incentive</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>Paid Leave</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>13th month pay</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>Bonus </td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>Meal Allowance</td>
                                          <td>PHP 500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>5 - Outstanding</td>
                                          <td>Performance Incentive</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>Paid Leave</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>Personnel Economic Relief Allowance (PERA)</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>Paid Leave</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>2003-00331</td>
                                          <td>Rebecca Black</td>
                                          <td>Professor</td>
                                          <td>VI</td>
                                          <td>Faculty - College</td>
                                          <td>4 - Very Satisfactory</td>
                                          <td>Personnel Economic Relief Allowance (PERA)</td>
                                          <td>PHP 2,500.00</td>
                                          <td>
                                             <a href="#" class="btn btn-success">
                                             <span class="glyphicon glyphicon-user"></span> Details
                                             </a>
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </div>
                              <div class="tab-pane fade" id="faq-cat-3">
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
               <div class="modal fade" id="modalpromote" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                           <strong>Promote Employee</strong>
                           <br>
                           <br>
                           <img src="img/escobs.jpg">
                           </image>
                           <br>
                           <br>
                           Name :  Pablo Escobar 
                           <br>
                           <br>
                           Hire Date: 10/2/1997 
                           <br>
                           <br>
                           Department: Faculty- SHS
                           <br>
                           <br>
                           Current Job Description: Professor II 
                           <br>
                           <br>
                           <br>
                           <div class="form-group">
                              <label>Target Department:</label>
                              <select class="form-control">
                                 <option>Administrative</option>
                                 <option>Research</option>
                                 <option>Logistics</option>
                                 <option>Finance</option>
                              </select>
                           </div>
                           <label>Target Job Title: </label>
                           <select class="form-control">
                              <option>-</option>
                              <option>Senior Floor Manager</option>
                              <option>Senior Professor</option>
                              <option>Emperor</option>
                              <option>Payroll Master</option>
                           </select>
                           <label>Target Rank: </label>
                           <select class="form-control">
                              <option>-</option>
                              <option>I</option>
                              <option>II</option>
                              <option>III</option>
                              <option>IV</option>
                           </select>
                        </div>
                        <div class="input-group-btn">
                           submit
                        </div>
                        <!-- /btn-group -->
                        <!-- /input-group -->
                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                        Close
                        <i class="fa fa-times"></i>
                        </button>
                     </div>
                  </div>
               </div>
            </section>
         </aside>
         <%@include file="../includes/footer.jsp" %>
         <!-- beginning of page level js -->
         <script>sidebar.cpat();</script>
         <!-- end of page level js -->
      </div>
   </body>
</html>