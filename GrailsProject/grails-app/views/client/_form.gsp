<%@ page import="org.grails.store.Client" %>



			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="client.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="username" required="" value="${clientInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="client.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:passwordField name="password" required="" value="${clientInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'cpf', 'error')} required">
				<label for="cpf" class="control-label"><g:message code="client.cpf.label" default="Cpf" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="cpf" required="" value="${clientInstance?.cpf}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'cpf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="client.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${clientInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'email', 'error')} required">
				<label for="email" class="control-label"><g:message code="client.email.label" default="Email" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="email" required="" value="${clientInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'endereco', 'error')} required">
				<label for="endereco" class="control-label"><g:message code="client.endereco.label" default="Endereco" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="endereco" required="" value="${clientInstance?.endereco}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'endereco', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'cep', 'error')} required">
				<label for="cep" class="control-label"><g:message code="client.cep.label" default="Cep" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="cep" pattern="${clientInstance.constraints.cep.matches}" required="" value="${clientInstance?.cep}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'cep', 'error')}</span>
				</div>
			</div>

		
			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'phone', 'error')} ">
				<label for="phone" class="control-label"><g:message code="client.phone.label" default="Phone" /></label>
				<div class="controls">
					<g:textField name="phone" value="${clientInstance?.phone}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'phone', 'error')}</span>
				</div>
			</div>

