<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>JSTL</title>
</head>
<body>
	<h1>JSTL test</h1>
	<c:set var="stuff" value="<%= new java.util.Date() %>"/>
	Time on server is ${stuff}
</body>

</html>