package org.grails.store

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

/**
 * FilmController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class FilmController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [filmInstanceList: Film.list(params), filmInstanceTotal: Film.count()]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def create() {
        [filmInstance: new Film(params)]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def save() {
        def filmInstance = new Film(params)
        if (!filmInstance.save(flush: true)) {
            render(view: "create", model: [filmInstance: filmInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'film.label', default: 'Film'), filmInstance.id])
        redirect(action: "show", id: filmInstance.id)
    }

    def show() {
        def filmInstance = Film.get(params.id)
        if (!filmInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'film.label', default: 'Film'), params.id])
            redirect(action: "list")
            return
        }

        [filmInstance: filmInstance]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def edit() {
        def filmInstance = Film.get(params.id)
        if (!filmInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'film.label', default: 'Film'), params.id])
            redirect(action: "list")
            return
        }

        [filmInstance: filmInstance]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def update() {
        def filmInstance = Film.get(params.id)
        if (!filmInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'film.label', default: 'Film'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (filmInstance.version > version) {
                filmInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'film.label', default: 'Film')] as Object[],
                          "Another user has updated this Film while you were editing")
                render(view: "edit", model: [filmInstance: filmInstance])
                return
            }
        }

        filmInstance.properties = params

        if (!filmInstance.save(flush: true)) {
            render(view: "edit", model: [filmInstance: filmInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'film.label', default: 'Film'), filmInstance.id])
        redirect(action: "show", id: filmInstance.id)
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def delete() {
        def filmInstance = Film.get(params.id)
        if (!filmInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'film.label', default: 'Film'), params.id])
            redirect(action: "list")
            return
        }

        try {
            filmInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'film.label', default: 'Film'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'film.label', default: 'Film'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
