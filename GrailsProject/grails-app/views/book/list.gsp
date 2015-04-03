
<%@ page import="org.grails.store.Book" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-book" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'book.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="description" title="${message(code: 'book.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="price" title="${message(code: 'book.price.label', default: 'Price')}" />
			
				<g:sortableColumn property="genre" title="${message(code: 'book.genre.label', default: 'Genre')}" />
			
				<g:sortableColumn property="author" title="${message(code: 'book.author.label', default: 'Author')}" />
			
				<g:sortableColumn property="publisher" title="${message(code: 'book.publisher.label', default: 'Publisher')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${bookInstanceList}" status="i" var="bookInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: bookInstance, field: "description")}</td>
			
				<td>${fieldValue(bean: bookInstance, field: "price")}</td>
			
				<td>${fieldValue(bean: bookInstance, field: "genre")}</td>
			
				<td>${fieldValue(bean: bookInstance, field: "author")}</td>
			
				<td>${fieldValue(bean: bookInstance, field: "publisher")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="container">
		<bs:paginate total="${bookInstanceTotal}" />
	</div>
</section>

</body>

</html>
