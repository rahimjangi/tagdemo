<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="theLocale" 
	value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale }"
	scope="session"/>

<fmt:setLocale value="${theLocale}"/>

<fmt:setBundle basename="com.raiseup.jsp.tagdemo.i18n.resources.mylabels"/>
<html>
<head>
	<title>I18N Messages JSP</title>
</head>
<body>
	<h1>I18n Messages JSP</h1>
	<div>
		<a href="i18n0messages-test.jsp?theLocale=en_US">English(EN)</a> | 
		<a href="i18n0messages-test.jsp?theLocale=de_DE">German(DE)</a> | 
		<a href="i18n0messages-test.jsp?theLocale=es_ES">Spanish(ES)</a>
	</div>
	<hr>
	
	<fmt:message key="label.greeting" /><br><br>
	<fmt:message key="label.firstname" /><i> John</i><br><br>
	<fmt:message key="label.lastname" /><i> Doe</i><br><br>
	<fmt:message key="label.welcome" />
	<hr>
	<h5>Selected Locale: ${theLocale}</h5>
	
</body>
</html>