package org.grails.store

import org.compass.core.engine.SearchEngineQueryParseException
import grails.plugins.springsecurity.Secured
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils.*

@Secured(['IS_AUTHENTICATED_FULLY'])

class SearchableController {

	def searchableService

	//Index Page with search form and results
	def index = {
		if(!params.q?.trim()) {
			return [:]
		}
		try {
			return [searchResult: searchableService.search(params.q, params)]
		} catch (SearchEngineQueryParseException ex) {
			return [parseException: true]
		}
	}

	//Perform a bulk index every searchable object in the database
	def indexAll = {
		Thread.start {
			searchableService.index()
		}
		render("bulk index started in a background thread")
	}

	//Perform an unindex every object that is not searchable in the database
	def unindexAll = {
		searchableService.unindex()
		render("unindexAll done")
	}
}