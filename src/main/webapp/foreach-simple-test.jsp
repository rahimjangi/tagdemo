<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%

	String[] cities= {"Chicago","Fairfield","Lowa City"};
	pageContext.setAttribute("myCities", cities);

%>
<html>
<head>
	<title>ForEach</title>
</head>
<body>

<h1>ForEach simple test JSTL</h1>
	<h3>Cities:</h3>
	<ol>
		<c:forEach var="tmpCity" items="${myCities}" >
			<li>${tmpCity}</li>
		</c:forEach>
	</ol>

</body>

</html>