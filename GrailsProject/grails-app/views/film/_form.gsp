<%@ page import="org.grails.store.Film" %>



			<div class="control-group fieldcontain ${hasErrors(bean: filmInstance, field: 'shoppingItem', 'error')} ">
				<label for="shoppingItem" class="control-label"><g:message code="film.shoppingItem.label" default="Shopping Item" /></label>
				<div class="controls">
					<g:select id="shoppingItem" name="shoppingItem.id" from="${com.metasieve.shoppingcart.ShoppingItem.list()}" optionKey="id" value="${filmInstance?.shoppingItem?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: filmInstance, field: 'shoppingItem', 'error')}</span>
				</div>
			</div>

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

			<div class="control-group fieldcontain ${hasErrors(bean: filmInstance, field: 'genre', 'error')} required">
				<label for="genre" class="control-label"><g:message code="film.genre.label" default="Genre" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="genre" from="${filmInstance.constraints.genre.inList}" required="" value="${filmInstance?.genre}" valueMessagePrefix="film.genre"/>
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

			<div class="control-group fieldcontain ${hasErrors(bean: filmInstance, field: 'type', 'error')} required">
				<label for="type" class="control-label"><g:message code="film.type.label" default="Type" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="type" from="${filmInstance.constraints.type.inList}" required="" value="${filmInstance?.type}" valueMessagePrefix="film.type"/>
					<span class="help-inline">${hasErrors(bean: filmInstance, field: 'type', 'error')}</span>
				</div>
			</div>

