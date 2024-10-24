<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    //https://www.jb51.net/web/458871.html
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <title>Login</title>  
    <link rel="stylesheet" type="text/css" href="static/Login.css"/>  
</head>  
<body>  
    <div id="login">  
        <h1>Login</h1>  
        <form method="post" action="LoginServet">  
            <input type="text" required="required" placeholder="Account" name="u"></input>  
            <input type="password" required="required" placeholder="Password" name="p"></input>  
            <button class="but" type="submit">Sign In</button>  
            <label for ="password">
                         No account ?
                         <a href="/Address/register.jsp" style="color:white;"> Sign Here </a>
                     <label>      
        </form>  
        
         <br/>
                       <label> 
                       <% 
                       String state=(String)session.getAttribute("A2");
                                 session.removeAttribute("A2");
                                 if(state!=null){
                                	 out.print(state);
                                 }
                       
                       %>
                       <lable> 
        
        
        
        
        
    </div>  
</body>  
</html>  