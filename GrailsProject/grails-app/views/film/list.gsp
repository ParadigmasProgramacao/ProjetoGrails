
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
			
				<th><g:message code="film.shoppingItem.label" default="Shopping Item" /></th>
			
				<g:sortableColumn property="name" title="${message(code: 'film.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="description" title="${message(code: 'film.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="price" title="${message(code: 'film.price.label', default: 'Price')}" />
			
				<g:sortableColumn property="genre" title="${message(code: 'film.genre.label', default: 'Genre')}" />
			
				<g:sortableColumn property="releaseYear" title="${message(code: 'film.releaseYear.label', default: 'Release Year')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${filmInstanceList}" status="i" var="filmInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${filmInstance.id}">${fieldValue(bean: filmInstance, field: "shoppingItem")}</g:link></td>
			
				<td>${fieldValue(bean: filmInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: filmInstance, field: "description")}</td>
			
				<td>${fieldValue(bean: filmInstance, field: "price")}</td>
			
				<td>${fieldValue(bean: filmInstance, field: "genre")}</td>
			
				<td>${fieldValue(bean: filmInstance, field: "releaseYear")}</td>
			
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
