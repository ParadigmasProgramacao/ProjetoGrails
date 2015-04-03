<%@ page import="org.grails.store.Film" %>



			<div class="control-group fieldcontain ${hasErrors(bean: filmInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="film.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${filmInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: filmInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: filmInstance, field: 'description', 'error')} required">
				<label for="description" class="control-label"><g:message code="film.description.label" default="Description" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="description" required="" value="${filmInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: filmInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: filmInstance, field: 'price', 'error')} required">
				<label for="price" class="control-label"><g:message code="film.price.label" default="Price" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="price" step="any" required="" value="${filmInstance.price}"/>
					<span class="help-inline">${hasErrors(bean: filmInstance, field: 'price', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: filmInstance, field: 'genre', 'error')} ">
				<label for="genre" class="control-label"><g:message code="film.genre.label" default="Genre" /></label>
				<div class="controls">
					<g:select name="genre" from="${filmInstance.constraints.genre.inList}" value="${filmInstance?.genre}" valueMessagePrefix="film.genre" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: filmInstance, field: 'genre', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: filmInstance, field: 'releaseYear', 'error')} required">
				<label for="releaseYear" class="control-label"><g:message code="film.releaseYear.label" default="Release Year" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="releaseYear" required="" value="${filmInstance.releaseYear}"/>
					<span class="help-inline">${hasErrors(bean: filmInstance, field: 'releaseYear', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: filmInstance, field: 'runtime', 'error')} required">
				<label for="runtime" class="control-label"><g:message code="film.runtime.label" default="Runtime" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="runtime" required="" value="${filmInstance.runtime}"/>
					<span class="help-inline">${hasErrors(bean: filmInstance, field: 'runtime', 'error')}</span>
				</div>
			</div>

