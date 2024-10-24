<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script >
	function submitit1()
	//let program1 to deal
	{
	document.form1.action="AddStudentServlet"
	document.form1.submit();
	}
	function submitit2()
	//let program2 to deal
	{
	document.form1.action="LoginServet"
	document.form1.submit();
	}


</script>
</head>

<body>
<form name ="form1" METHOD="POST">
	username:<input type=text name="A">
	password:<input type=password name=p>
<input type =button value="Submit1" onClick =submitit1();>
<input type =button value="Submit2" onClick =submitit2();>

</form>
        
        
</body>
</html>