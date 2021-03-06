
<%@ page import="org.grails.store.Film" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'film.label', default: 'Film')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-film" class="first">

	<table class="table">
		<tbody>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="film.type.label" default="Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: filmInstance, field: "type")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="film.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: filmInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="film.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: filmInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="film.genre.label" default="Genre" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: filmInstance, field: "genre")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="film.releaseYear.label" default="Release Year" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: filmInstance, field: "releaseYear")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="film.runtime.label" default="Runtime" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: filmInstance, field: "runtime")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="film.price.label" default="Price" /></td>
				
				<td valign="top" class="value">R$ ${fieldValue(bean: filmInstance, field: "price")}</td>
				
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.type.label" default="PayPal" /></td>
				
				<td valign="top" class="value">
					<paypal:button 
							            itemName="${filmInstance.name}"
							            itemNumber="${filmInstance.id}"
							            transactionId="${payment?.transId}"
							            amount="${filmInstance.price / 10}"
							            currency = "BRL"
							                discountAmount="0"
							            buyerId= "1"
							            />
				</td>
				
			</tr>
			
		
		</tbody>
	</table>
</section>

</body>

</html>
