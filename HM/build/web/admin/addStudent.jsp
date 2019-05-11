
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>Add Student</title>
    </head>
    <body>
        <div>
            <% if(session.getAttribute("message")!=null){ %>
            <%=session.getAttribute("message") %>
            <% } %>
            
        </div>
    
<div class="span3">
    <h3>Add Student</h3><hr>
    <form action="addstudent" method="post">
    <label>First Name</label>
    <input type="text" name="first_name" class="span3">
    <label>Last Name</label>
    <input type="text" name="last_name" class="span3">
   
    <label>User ID</label>
    <input type="text" name="uid" class="span3">
    <br>
    <br>
    <input type="submit" value="Add" class="btn btn-primary pull-left">
   
    </form>
</div>
    
    </body>
</html>
