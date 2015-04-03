<%@ page import="org.grails.store.Product" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	<g:link controller="book" action="create">add Book</g:link>
	</br>
	<g:link controller="film" action="create">add Film</g:link>

</body>

</html>