<%@ page import="org.grails.store.Book" %>



			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="book.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${bookInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'description', 'error')} required">
				<label for="description" class="control-label"><g:message code="book.description.label" default="Description" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="description" required="" value="${bookInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'price', 'error')} required">
				<label for="price" class="control-label"><g:message code="book.price.label" default="Price" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="price" step="any" required="" value="${bookInstance.price}"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'price', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'genre', 'error')} required">
				<label for="genre" class="control-label"><g:message code="book.genre.label" default="Genre" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="genre" from="${bookInstance.constraints.genre.inList}" required="" value="${bookInstance?.genre}" valueMessagePrefix="book.genre"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'genre', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
				<label for="author" class="control-label"><g:message code="book.author.label" default="Author" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="author" required="" value="${bookInstance?.author}"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'author', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} required">
				<label for="publisher" class="control-label"><g:message code="book.publisher.label" default="Publisher" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="publisher" required="" value="${bookInstance?.publisher}"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'publisher', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'publicationYear', 'error')} required">
				<label for="publicationYear" class="control-label"><g:message code="book.publicationYear.label" default="Publication Year" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="publicationYear" required="" value="${bookInstance.publicationYear}"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'publicationYear', 'error')}</span>
				</div>
			</div>

