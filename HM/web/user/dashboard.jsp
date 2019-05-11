<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!------ Include the above in your HEAD tag ---------->

<%@page import="chitkara.dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>D A S H B O A R D</title>
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.cyan-light_blue.min.css">
    <link rel="stylesheet" href="css1.css">
    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    

<script>
    $(document).ready(function(){


$(".readMore").click(function(){
var This=$(this);    
$(this).next().toggle(function(){
    if(This.text()=="Read"){
      This.text("Hide") 
    }
    else{
        This.text("Read") 
    }
})
});})
</script>

  </head>
  <body>
    <div class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
      <header class="demo-header mdl-layout__header mdl-color--grey-100 mdl-color-text--grey-600">
        <div class="mdl-layout__header-row">
          <span class="mdl-layout-title">Home</span>
          
          <form action="logout" method="post"><a><input type="submit" value="LogOut" class="btn btn-primary pull-right"></a></form>
          <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); %>
        
        </div>
      </header>
      <div class="demo-drawer mdl-layout__drawer mdl-color--blue-grey-900 mdl-color-text--blue-grey-50">
        <header class="demo-drawer-header">
            <center><img src="u2.jpg" class="demo-avatar"></center>
          <br>
          <div class="demo-avatar-dropdown">
          <span><i><b><u><center><%=user.getFirst_name()+" "+user.getLast_name()%></center></u></b></i></span>
            <br><br>
          </div>
        </header>
        <nav class="demo-navigation mdl-navigation mdl-color--blue-grey-800">
          <a class="mdl-navigation__link" href=""><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">home</i>Home</a>
          <a class="mdl-navigation__link" href="profile.jsp"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">inbox</i>Profile</a>
          <a class="mdl-navigation__link" href="addComplaint.jsp"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">forum</i>Complaint</a>
          
        </nav>
      </div>
      
      <main class="mdl-layout__content mdl-color--grey-100">
        <div class="mdl-grid demo-content">
          
    <br><br><br>      
    <div class="container">
    <div class="notice notice-success">
        <strong>Notice 1</strong><span class="pull-right text-success readMore">Read</span>
        <div class="desc">
           <p>
               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
               sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>        
        </div>
    </div><br>
    <div class="notice notice-danger">
        <strong>Notice 2</strong><span class="pull-right text-danger readMore">Read</span>
         <div class="desc">
            <p>
               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
               sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>        
        </div>
    </div><br>
    <div class="notice notice-info">
        <strong>Notice 3</strong><span class="pull-right text-info readMore">Read</span>
         <div class="desc">
            
            <p>
               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
               sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>        
        </div>
    </div><br>
    <div class="notice notice-warning">
        <strong>Notice 4</strong><span class="pull-right text-warning readMore">Read</span>
          <div class="desc">
            
            <p>
               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
               sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>        
        </div>
    </div><br>
   
    
</div>

    </div>
    </main>
    </div>
      
      
    <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>

  <script>
  var button = document.createElement('button');
  var textNode = document.createTextNode('Click Me!');
  button.appendChild(textNode);
  button.className = 'mdl-button mdl-js-button mdl-js-ripple-effect';
  componentHandler.upgradeElement(button);
  document.getElementById('container').appendChild(button);
  

  
</script>
  </body>
</html>
