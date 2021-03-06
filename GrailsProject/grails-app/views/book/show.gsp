
<%@ page import="org.grails.store.Book" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-book" class="first">

	<table class="table">
		<tbody>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.type.label" default="Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "type")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.genre.label" default="Genre" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "genre")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.author.label" default="Author" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "author")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.publisher.label" default="Publisher" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "publisher")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.publicationYear.label" default="Publication Year" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "publicationYear")}</td>
				
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.price.label" default="Price" /></td>
				
				<td valign="top" class="value">R$ ${fieldValue(bean: bookInstance, field: "price")}</td>
				
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.type.label" default="PayPal" /></td>
				
				<td valign="top" class="value">
					<paypal:button 
							            itemName="${bookInstance.name}"
							            itemNumber="${bookInstance.id}"
							            transactionId="${payment?.transId}"
							            amount="${bookInstance.price / 10}"
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
