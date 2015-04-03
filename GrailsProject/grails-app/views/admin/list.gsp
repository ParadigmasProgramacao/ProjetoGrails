
<%@ page import="org.grails.store.Admin" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-admin" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'admin.username.label', default: 'Username')}" />
			
				<g:sortableColumn property="password" title="${message(code: 'admin.password.label', default: 'Password')}" />
			
				<g:sortableColumn property="accountExpired" title="${message(code: 'admin.accountExpired.label', default: 'Account Expired')}" />
			
				<g:sortableColumn property="accountLocked" title="${message(code: 'admin.accountLocked.label', default: 'Account Locked')}" />
			
				<g:sortableColumn property="cep" title="${message(code: 'admin.cep.label', default: 'Cep')}" />
			
				<g:sortableColumn property="cpf" title="${message(code: 'admin.cpf.label', default: 'Cpf')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${adminInstanceList}" status="i" var="adminInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${adminInstance.id}">${fieldValue(bean: adminInstance, field: "username")}</g:link></td>
			
				<td>${fieldValue(bean: adminInstance, field: "password")}</td>
			
				<td><g:formatBoolean boolean="${adminInstance.accountExpired}" /></td>
			
				<td><g:formatBoolean boolean="${adminInstance.accountLocked}" /></td>
			
				<td>${fieldValue(bean: adminInstance, field: "cep")}</td>
			
				<td>${fieldValue(bean: adminInstance, field: "cpf")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="container">
		<bs:paginate total="${adminInstanceTotal}" />
	</div>
</section>

</body>

</html>
