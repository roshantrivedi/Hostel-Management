<%-- 
    Document   : profile
    Created on : 27 Mar, 2019, 12:33:10 AM
    Author     : Roshan Kumar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="chitkara.dao.UserDao"%>
<%@page import="chitkara.dao.ProfileDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Profile</title>
        <link rel="stylesheet" href="css2.css">
</head>
    
    <jsp:useBean id="c1" class="chitkara.operation.ProfileOperation"></jsp:useBean>
   
    <body>
		
<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="images.png" alt=""/>
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                       ${user.getFirst_name()}  ${user.getLast_name()}
                                    </h5>
                                   
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                   
                </div>
              
		<% ResultSet rs=c1.showProfile(user.getUid());
                if(rs.next()){
                    %>
			  
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>University Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("uid")%> </p>
                                            </div>
                                        </div>
                                            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=rs.getString("first_name")+ " "+rs.getString("last_name")%></p>
                                            </div>
                                        </div>
                                            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Mobile No</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("mobile_no")%> </p>
                                            </div>
                                        </div>
                                            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Father's Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("father_name")%> </p>
                                            </div>
                                        </div>
                                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Father's Mobile No</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("f_mob_no")%> </p>
                                            </div>
                                        </div>  
                                            
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Branch</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("branch")%> </p>
                                            </div>
                                        </div>  
                                            
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Year</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("year")%> </p>
                                            </div>
                                        </div>  
                                            
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Hostel</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("hostel")%> </p>
                                            </div>
                                        </div>  
                                            
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Address</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("address")%> </p>
                                            </div>
                                        </div>  
                                        
                            </div>
                            
                        </div>
                    </div>
					
                <% } %>
					
                </div>
            </form>           
        </div>
 
    </body>
</html>
