package org.grails.store

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured
/**
 * ClientController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ClientController {

    def springSecurityService    
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def login ={
        redirect controller: 'login', action:'auth'
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [clientInstanceList: Client.list(params), clientInstanceTotal: Client.count()]
    }

    def create() {
        [clientInstance: new Client(params)]
    }

    def save() {
        def clientInstance = new Client(params)
        if (!clientInstance.save(flush: true)) {
            render(view: "create", model: [clientInstance: clientInstance])
            return
        }

        if (!clientInstance.authorities.contains(Role.findByAuthority('ROLE_USER'))) {
            UserRole.create clientInstance, Role.findByAuthority('ROLE_USER')
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'client.label', default: 'Client'), clientInstance.id])
        redirect(action: "welcome", id: clientInstance.id)
    }

    def welcome = {
        def clientInstance = Client.get(params.id)
        if (!clientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'client.label', default: 'Client'), params.id])
            redirect(action: "list")
            return
        }

        [clientInstance: clientInstance]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def show() {
        def clientInstance = Client.get(params.id)
        if (!clientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'client.label', default: 'Client'), params.id])
            redirect(action: "list")
            return
        }

        [clientInstance: clientInstance]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def edit() {
        def clientInstance = Client.get(params.id)
        if (!clientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'client.label', default: 'Client'), params.id])
            redirect(action: "list")
            return
        }

        [clientInstance: clientInstance]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def update() {
        def clientInstance = Client.get(params.id)
        if (!clientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'client.label', default: 'Client'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (clientInstance.version > version) {
                clientInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'client.label', default: 'Client')] as Object[],
                          "Another user has updated this Client while you were editing")
                render(view: "edit", model: [clientInstance: clientInstance])
                return
            }
        }

        clientInstance.properties = params

        if (!clientInstance.save(flush: true)) {
            render(view: "edit", model: [clientInstance: clientInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'client.label', default: 'Client'), clientInstance.id])
        redirect(action: "show", id: clientInstance.id)
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def delete() {
        def clientInstance = Client.get(params.id)
        if (!clientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'client.label', default: 'Client'), params.id])
            redirect(action: "list")
            return
        }

        try {
            clientInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'client.label', default: 'Client'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'client.label', default: 'Client'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
