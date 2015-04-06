
<%@ page import="org.grails.store.Admin" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-admin" class="first">

	<table class="table">
		<tbody>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="admin.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: adminInstance, field: "name")}</td>
				
			</tr>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="admin.username.label" default="Username" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: adminInstance, field: "username")}</td>
				
			</tr>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="admin.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: adminInstance, field: "email")}</td>
				
			</tr>		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="admin.accountLocked.label" default="Account Locked" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${adminInstance?.accountLocked}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="admin.cep.label" default="Cep" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: adminInstance, field: "cep")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="admin.cpf.label" default="Cpf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: adminInstance, field: "cpf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="admin.endereco.label" default="Endereco" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: adminInstance, field: "endereco")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="admin.phone.label" default="Phone" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: adminInstance, field: "phone")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>


</body>

</html>
