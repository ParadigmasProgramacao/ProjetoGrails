<%@ page import="org.grails.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="client.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${clientInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="client.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${clientInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="client.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" pattern="${clientInstance.constraints.cpf.matches}" required="" value="${clientInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="client.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${clientInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'surname', 'error')} required">
	<label for="surname">
		<g:message code="client.surname.label" default="Surname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="surname" required="" value="${clientInstance?.surname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="client.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${clientInstance?.email}"/>
</div>

