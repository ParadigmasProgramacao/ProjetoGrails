<%@ page import="org.grails.store.Client" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
	<title><g:message code="Welcome!" /></title>
</head>

<body>

	Welcome, ${clientInstance.name}
</body>

</html>
