
<%@ page import="org.grails.store.Product" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-product" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="product.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="product.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="product.price.label" default="Price" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productInstance, field: "price")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="product.genre.label" default="Genre" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productInstance, field: "genre")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
