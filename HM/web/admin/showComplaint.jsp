
<%@page import="java.util.Date"%>
<%@page import="chitkara.dao.ComplaintDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="chitkara.dao.UserDao"%>
<%@page import="chitkara.dao.ProfileDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%ComplaintDao com=(ComplaintDao)session.getAttribute("com"); %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Complaints</title>
        <link rel="stylesheet" href="css2.css">
</head>
    
    <jsp:useBean id="c1" class="chitkara.operation.ProfileOperation"></jsp:useBean>
   
    <body style="background-color: lightgrey">
        <%
            Date d=new Date();
        %>
    <center> <h3><b><i>All Complaints as of <%=d%></i></b></h3><hr style="border: 1px solid black;"></center>
		
                 <% ResultSet rs=c1.showAllComplaints();
                while(rs.next()){
                    %>
                     
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label><b>University Id :</b></label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("uid")%> </p>
                                            </div>
                        
                                        </div>
                                            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label><b>Name :</b></label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=rs.getString("first_name")+ " "+rs.getString("last_name")%></p>
                                            </div>
                                        </div>
                                           
                                            
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label><b>Complaint :</b></label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("comp")%> </p>
                                            </div>
                             <% if(!rs.getString("status").equalsIgnoreCase("approved"))
                            {%>
                                <a href="addcomplaint?id=<%=rs.getInt("id")%>&value=Approved">Approve</a>
                                <a href="addcomplaint?id=<%=rs.getInt("id")%>&value=Rejected">Reject</a>
                            <%} 
                               
                            else {  %>
     <button style="background:whitesmoke; border:1px solid black;font-weight:bold;font-size: 110%;" disabled="disabled"><%=rs.getString("status")%></button>
                        <%}%>
                                </div>        
                            </div>
                        </div>
                    </div>
                    <hr style="border-top: 1px dotted black">
					
                <% } %>
                
    </body>
</html>
