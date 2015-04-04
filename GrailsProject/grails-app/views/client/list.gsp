
<%@ page import="org.grails.store.Client" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-client" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'client.username.label', default: 'Username')}" />
			
				<g:sortableColumn property="password" title="${message(code: 'client.password.label', default: 'Password')}" />
			
				<g:sortableColumn property="cpf" title="${message(code: 'client.cpf.label', default: 'Cpf')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'client.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="email" title="${message(code: 'client.email.label', default: 'Email')}" />
			
				<g:sortableColumn property="endereco" title="${message(code: 'client.endereco.label', default: 'Endereco')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${clientInstanceList}" status="i" var="clientInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "username")}</g:link></td>
			
				<td>${fieldValue(bean: clientInstance, field: "password")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "cpf")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "email")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "endereco")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="container">
		<bs:paginate total="${clientInstanceTotal}" />
	</div>
</section>

</body>

</html>
