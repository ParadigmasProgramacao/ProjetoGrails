
<%@ page import="org.grails.store.Film" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'film.label', default: 'Film')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-film" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'film.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="description" title="${message(code: 'film.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="genre" title="${message(code: 'film.genre.label', default: 'Genre')}" />
			
				<g:sortableColumn property="releaseYear" title="${message(code: 'film.releaseYear.label', default: 'Release Year')}" />
			
				<g:sortableColumn property="runtime" title="${message(code: 'film.runtime.label', default: 'Runtime')}" />

				<g:sortableColumn property="price" title="${message(code: 'film.price.label', default: 'Price')}" />

				<g:sortableColumn property="paypal" title="PayPal" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${filmInstanceList}" status="i" var="filmInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${filmInstance.id}">${fieldValue(bean: filmInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: filmInstance, field: "description")}</td>
			
				<td>${fieldValue(bean: filmInstance, field: "genre")}</td>
			
				<td>${fieldValue(bean: filmInstance, field: "releaseYear")}</td>
			
				<td>${fieldValue(bean: filmInstance, field: "runtime")}</td>

				<td>R$ ${fieldValue(bean: filmInstance, field: "price")}</td>

				<td> 
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
		</g:each>
		</tbody>
	</table>
	<div class="container">
		<bs:paginate total="${filmInstanceTotal}" />
	</div>
</section>

</body>

</html>
