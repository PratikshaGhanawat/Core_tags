1. Extract all the jar files in folder C -> Program files(X86) -> Apache Software Foundation-> (create a folder JSTl jars & extract these zip files in this folder)
-> Right click on project name -> Build path -> configure path-> (From local disl C )-> Program File(X86) ->  Apache Software Foundation-> Tomcat 9.0 -> lib -> servlet-api-> Apply
2. src ->main ->webapp -> WEB-INF ->lib(right click on it) -> import ->General ->FileSystem ->Next -> (Browse the directory where jar files are stored) -> include that folder -> Ok -> select the check box of all the jars ->Finish 
3. For sql :
   <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>  
   
<sql:setDataSource driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/rit"  
     user="root"  password="Gayu@321" var="db"/>  

<sql:query dataSource="${db}" var="rs">  
    SELECT * FROM rit1;  
</sql:query>  
   

<table border="2" width="100%">  
    <tr>  
         
        <th>Name</th>  
        <th>Id</th>  
         
    </tr>  
    <c:forEach var="table" items="${rs.rows}">  
        <tr>  
            <td><c:out value="${table.name}"/></td>  
            <td><c:out value="${table.id}"/></td>  
          
        </tr>  
    </c:forEach>  
</table>  
<c:set var="StudentId" value="45"/> 
<sql:update dataSource="${db}" var="count">  
DELETE FROM rit1 WHERE id =?  
<sql:param value="${StudentId}" />
   </sql:update>
   
<table border="2" width="100%">  
    <tr>  
         
        <th>Name</th>  
        <th>Id</th>  
         
    </tr>  
    <c:forEach var="table" items="${count.rows1}">  
        <tr>  
            <td><c:out value="${table.name}"/></td>  
            <td><c:out value="${table.id}"/></td>  
          
        </tr>  
    </c:forEach>  
</table> 
  
</body>  
</html>

