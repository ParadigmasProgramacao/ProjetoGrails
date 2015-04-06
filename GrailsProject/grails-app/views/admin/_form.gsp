<%@ page import="org.grails.store.Admin" %>



			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="admin.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="username" required="" value="${adminInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="admin.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:passwordField name="password" required="" value="${adminInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'cpf', 'error')} required">
				<label for="cpf" class="control-label"><g:message code="admin.cpf.label" default="Cpf" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="cpf" pattern="${adminInstance.constraints.cpf.matches}" required="" value="${adminInstance?.cpf}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'cpf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="admin.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${adminInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'email', 'error')} required">
				<label for="email" class="control-label"><g:message code="admin.email.label" default="Email" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="email" name="email" required="" value="${adminInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'endereco', 'error')} required">
				<label for="endereco" class="control-label"><g:message code="admin.endereco.label" default="Endereco" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="endereco" required="" value="${adminInstance?.endereco}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'endereco', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'cep', 'error')} required">
				<label for="cep" class="control-label"><g:message code="admin.cep.label" default="Cep" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="cep" pattern="${adminInstance.constraints.cep.matches}" required="" value="${adminInstance?.cep}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'cep', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'accountExpired', 'error')} ">
				<label for="accountExpired" class="control-label"><g:message code="admin.accountExpired.label" default="Account Expired" /></label>
				<div class="controls">
					<bs:checkBox name="accountExpired" value="${adminInstance?.accountExpired}" />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'accountExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'accountLocked', 'error')} ">
				<label for="accountLocked" class="control-label"><g:message code="admin.accountLocked.label" default="Account Locked" /></label>
				<div class="controls">
					<bs:checkBox name="accountLocked" value="${adminInstance?.accountLocked}" />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'accountLocked', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="control-label"><g:message code="admin.enabled.label" default="Enabled" /></label>
				<div class="controls">
					<bs:checkBox name="enabled" value="${adminInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'passwordExpired', 'error')} ">
				<label for="passwordExpired" class="control-label"><g:message code="admin.passwordExpired.label" default="Password Expired" /></label>
				<div class="controls">
					<bs:checkBox name="passwordExpired" value="${adminInstance?.passwordExpired}" />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'passwordExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'phone', 'error')} ">
				<label for="phone" class="control-label"><g:message code="admin.phone.label" default="Phone" /></label>
				<div class="controls">
					<g:textField name="phone" value="${adminInstance?.phone}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'phone', 'error')}</span>
				</div>
			</div>

			<sec:ifAllGranted roles="ROLE_SUPER">
				<g:select name="role" from="${['ROLE_ADMIN', 'ROLE_SUPER']}" value='ROLE_ADMIN'/>
			</sec:ifAllGranted>

