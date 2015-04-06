
<%@ page import="org.grails.store.Client" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-client" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.username.label" default="Username" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "username")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.password.label" default="Password" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "password")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.cpf.label" default="Cpf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "cpf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.endereco.label" default="Endereco" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "endereco")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.cep.label" default="Cep" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "cep")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.accountExpired.label" default="Account Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${clientInstance?.accountExpired}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.accountLocked.label" default="Account Locked" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${clientInstance?.accountLocked}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.enabled.label" default="Enabled" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${clientInstance?.enabled}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.passwordExpired.label" default="Password Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${clientInstance?.passwordExpired}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.phone.label" default="Phone" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "phone")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.product.label" default="Product" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${clientInstance.product}" var="p">
						<li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
