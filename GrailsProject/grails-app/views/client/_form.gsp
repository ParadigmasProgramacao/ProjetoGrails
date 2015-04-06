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
					<g:textField name="cpf" pattern="${clientInstance.constraints.cpf.matches}" required="" value="${clientInstance?.cpf}"/>
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
					<g:field type="email" name="email" required="" value="${clientInstance?.email}"/>
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

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'accountExpired', 'error')} ">
				<label for="accountExpired" class="control-label"><g:message code="client.accountExpired.label" default="Account Expired" /></label>
				<div class="controls">
					<bs:checkBox name="accountExpired" value="${clientInstance?.accountExpired}" />
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'accountExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'accountLocked', 'error')} ">
				<label for="accountLocked" class="control-label"><g:message code="client.accountLocked.label" default="Account Locked" /></label>
				<div class="controls">
					<bs:checkBox name="accountLocked" value="${clientInstance?.accountLocked}" />
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'accountLocked', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="control-label"><g:message code="client.enabled.label" default="Enabled" /></label>
				<div class="controls">
					<bs:checkBox name="enabled" value="${clientInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'passwordExpired', 'error')} ">
				<label for="passwordExpired" class="control-label"><g:message code="client.passwordExpired.label" default="Password Expired" /></label>
				<div class="controls">
					<bs:checkBox name="passwordExpired" value="${clientInstance?.passwordExpired}" />
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'passwordExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'phone', 'error')} ">
				<label for="phone" class="control-label"><g:message code="client.phone.label" default="Phone" /></label>
				<div class="controls">
					<g:textField name="phone" value="${clientInstance?.phone}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'phone', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'product', 'error')} ">
				<label for="product" class="control-label"><g:message code="client.product.label" default="Product" /></label>
				<div class="controls">
					<g:select name="product" from="${org.grails.store.Product.list()}" multiple="multiple" optionKey="id" size="5" value="${clientInstance?.product*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'product', 'error')}</span>
				</div>
			</div>

