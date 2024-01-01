
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>  
<head>  
<title>Tag Example</title>  
</head>  
<body>  
<c:set var="Income" scope="session" value="${4000*4}"/>  
<c:out value="${Income}"/>   


<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Before Remove Value is: <c:out value="${income}"/></p>  
<c:remove var="income"/>  
<p>After Remove Value is: <c:out value="${income}"/></p>



<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
  
<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if> 



<c:set var="income" scope="session" value="${4000*4}"/>  
<c:if test="${income > 8000}">  
   <p>My income is: <c:out value="${income}"/><p>  
</c:if>  




<h4>JSTL c:when, c:otherwise, c:choose</h4>  
  
<c:set value="10" var="num"></c:set>  
<c:choose>  
<c:when test="${num%2==0}">  
	<c:out value="${num} is even number"></c:out>  
</c:when>  
<c:otherwise>  
	<c:out value="${num} is odd number"></c:out>  
</c:otherwise>  
</c:choose> 



<h4>foreach</h4> 
<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach> 


<h4>Param para</h4>
<c:url value="/index1.jsp" var="completeURL">  
 <c:param name="trackingId" value="786"/>  
 <c:param name="user" value="Nakul"/>  
</c:url>  
${completeURL}  


<h4>redirect</h4>
<c:set var="url" value="0" scope="request"/>  
  <c:if test="${url<1}">  
     <c:redirect url="http://javatpoint.com"/>  
  </c:if>  
  <c:if test="${url>1}">  
     <c:redirect url="http://facebook.com"/>  
  </c:if>  
  
  
  <h4>url</h4>
  <c:url value="/RegisterDao.jsp"/>
  
</body>  
</html>