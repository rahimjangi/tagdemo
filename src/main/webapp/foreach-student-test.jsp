
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, com.raiseup.jsp.tagdemo.Student" %>
<%
	ArrayList<Student> students= new ArrayList<Student>();
	Student s1= new Student("Rahim","Jangi",false);
	Student s2= new Student("Ramin","Jangi",true);
	Student s3= new Student("Hassan","Jangi",false);
	Student s4= new Student("Akbar","Jangi",true);
	students.add(s1);
	students.add(s2);
	students.add(s3);
	students.add(s4);
	pageContext.setAttribute("students", students);
%>
<html>
<head>
<title>ForEach Student JSP</title>
</head>
<body>
<h1>ForEach student test JSP example</h1>
<h3>Students:</h3>
<ol>
	<c:forEach var="student" items="${students }">
		<li>${student.firstName}-${student.lastName }</li>
	</c:forEach>
</ol>
<h3>Golden Customers:</h3>
<ol>

<c:forEach var="student" items="${students }">

	<c:if test="${student.goldCustomer }">
		<li>${student.firstName } - ${student.lastName }</li>
	</c:if>
	
</c:forEach>

</ol>

<h3>Choose tag</h3>
<c:set var = "salary" scope = "session" value = "${2000*2}"/>
<ul>

<c:choose>
	<c:when test="${salary>10000 }"> ${salary }</c:when>
	<c:otherwise> Not have a good salary</c:otherwise>
</c:choose>

</ul>


</body>

</html>