<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    //https://www.jb51.net/web/458871.html
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <title>Register</title>  
    <link rel="stylesheet" type="text/css" href="static/register.css"/>  
</head>  
<body>  
    <div id="login">  
        <h1>Register</h1>  
        <form method="post"action="RegistServlet">  
            <input type="text" required="required" placeholder="Account" name="u"></input>  
            <input type="password" required="required" placeholder="Password" name="p"></input>  
            <button class="but" type="submit">Register</button>  
            <label for ="password">
                         Back to 
                         <a href="/Address/Login.jsp" style="color:white;"> Sign </a>
                         </label>
                         <br/>
                       <label> 
                       <% 
                       String state=(String)session.getAttribute("A1");
                                 session.removeAttribute("A1");
                                 if(state!=null){
                                	 out.print(state);
                                 }
                       
                       %>
                       <lable> 
        </form>  
    </div>  
</body>  
</html>  
