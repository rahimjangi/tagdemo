<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head></head>
<body>
<h1>This is all about function tag in JSTL</h1>

<c:set var="myStr" value="I will do it no matter what"/>

<p>Length of your message is "${myStr }": ${fn:length(myStr) }</p>
<p>UpperCase of your message is "${myStr }": ${fn:toUpperCase(myStr)}</p>
${fn:toLowerCase(myStr)}
</body>
</html>