<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.bean.StudentBean" %>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>
        Address System
    </title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
//Add function
        function submitit1() {
            document.form1.action = "AddStudentServlet";
            document.form1.submit();
        }
        //Change function
        function submitit3() {
            document.form1.action = "ChangeStudentServlet";
            document.form1.submit();
        }

        //Delete function
        function submitit2() {
            document.form2.action = "DelStudentServlet";
            document.form2.submit();
        }

        //Find function
        function submitit4() {
            document.form2.action = "ShowStudentServlet";
            document.form2.submit();
        }
    </script>
    <style>
        table.table - bordered {
            border - spacing: 10px; /* 这里设置表格单元格间距为10px，可以根据需要调整 */
        }
    </style>
</head>

<body>
    //https://www.runoob.com/try/bootstrap/layoutit/
    <div class="container">
        <div class="row clearfix">
            <div class="col-md - 12 column">
                <h3 class="text - center">
                    Address System
                </h3>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md - 12 column">
                <form class="form - horizontal" role="form" name="form1" method="post">
                    <div class="form - group">
                        <label for="inputEmail31" class="col - sm - 2 control - label">ID</label>
                        <div class="col - sm - 10">
                            <input type="text" class="form - control" id="inputEmail31" name="A">
                        </div>
                    </div>
                    <div class="form - group">
                        <label for="inputPassword32" class="col - sm - 2 control - label">Name</label>
                        <div class="col - sm - 10">
                            <input type="text" class="form - control" id="inputPassword32" name="B">
                        </div>
                    </div>
                    <div class="form - group">
                        <label for="inputPassword33" class="col - sm - 2 control - label">Age</label>
                        <div class="col - sm - 10">
                            <input type="text" class="form - control" id="inputPassword33" name="C">
                        </div>
                    </div>
                    <div class="form - group">
                        <label for="inputPassword34" class="col - sm - 2 control - label">Number</label>
                        <div class="col - sm - 10">
                            <input type="text" class="form - control" id="inputPassword34" name="D">
                        </div>
                    </div>
                    <div class="form - group">
                        <div class="col - sm - offset - 2 col - sm - 10">
                            <button type="submit" class="btn btn - default" onclick="submitit1();">Add New</button>
                            <button type="submit" class="btn btn - default" onclick="submitit3();">Change Current</button>
                            <%
                                String state=(String)session.getAttribute("B1");
                                session.removeAttribute("B1");
                                if(state!=null){
                                    out.print(state);
                                }
                            %>
                        </div>
                    </div>
                </form>                <div class="col - md - 12 column">
                    <form class="form - horizontal" role="form" name="form2" method="post">
                        <div class="form - group">
                            <label for="inputEmail35" class="col - sm - 2 control - label">ID</label>
                            <div class="col - sm - 10">
                                <input type="text" class="form - control" id="inputEmail35" name="A">
                            </div>
                        </div>
                        <div class="form - group">
                            <div class="col - sm - offset - 2 col - sm - 10">
                                <button type="submit" class="btn btn - default" onclick="submitit2();">Delete</button>
                                <button type="submit" class="btn btn - default" onclick="submitit4();">Find</button>
                                <%
                                    state=(String)session.getAttribute("B2");
                                    session.removeAttribute("B2");
                                    if(state!=null){
                                        out.print(state);
                                    }
                                %>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col - md - 1 column"></div>
                <div class="col - md - 11 column">
                    <table class="table table - bordered cell - spacing">
                        <thead>
                            <tr>
                                <th>
                                    ID
                                </th>
                               
                                <th>
                                    Name
                                </th>
                                <th>
                                    Age
                                </th>
                                <th>
                                    Number
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                //gain 对象
                                ArrayList stumess=(ArrayList)session.getAttribute("stumessage");
                                session.removeAttribute("stumessage");
                                if(stumess!=null){
                                    //below: execue success with data
                                    for(int i = 0; i<stumess.size(); i++){
                                        StudentBean a=(StudentBean)stumess.get(i);
                            %>
                            <tr class="info">
                                <td>
                                    <%=a.getSid()%>
                                </td>
                                <td>
                                    <%=a.getSname()%>
                                </td>
                                <td>
                                    <%=a.getSage()%>
                                </td>
                                <td>
                                    <%=a.getSaddress()%>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>

</html>
