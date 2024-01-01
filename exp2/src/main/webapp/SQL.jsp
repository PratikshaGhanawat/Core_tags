<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>  
<head>  
<title>sql:query Tag</title>  
</head>  
<body>  
   
<sql:setDataSource driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/test"  
     user="root"  password="Nirmala@1314" var="db"/>  

<sql:query dataSource="${db}" var="rs">  
    SELECT * FROM Students;  
</sql:query>  
   
<table border="2" width="100%">  
    <tr>  
        <th>Student ID</th>  
        <th>First Name</th>  
        <th>Last Name</th>  
        <th>Age</th>  
    </tr>  
    <c:forEach var="table" items="${rs.rows}">  
        <tr>  
            <td><c:out value="${table.id}"/></td>  
            <td><c:out value="${table.First_Name}"/></td>  
            <td><c:out value="${table.Last_Name}"/></td>  
            <td><c:out value="${table.Age}"/></td>  
        </tr>  
    </c:forEach>  
</table>  
  
  
<sql:update dataSource="${db}" var="count">  
INSERT INTO Students VALUES (200,'suresh', 'jaha', 25);  
</sql:update>  


<c:set var="StudentId" value="152"/>  
<sql:update dataSource="${db}" var="deleteCount2">  
    DELETE FROM Students WHERE id = ?  
    <sql:param value="${StudentId}" />  
</sql:update>

  


</body>  
</html>
