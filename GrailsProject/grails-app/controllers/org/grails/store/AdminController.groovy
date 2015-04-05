package org.grails.store

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured
/**
 * AdminController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class AdminController {

    def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        params.target = '/admin/control'
        redirect(action: "index", params: params, controller: 'login')
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def control ={
        render view: 'control';
    }

    // O usuário 'admin' não tem perfil 
    def isSuperAdmin(){
        if(springSecurityService.currentUser.username == 'admin'){
            redirect action: 'control'
        }
    }

    @Secured(['ROLE_ADMIN', 'ROLE_SUPER'])
    def perfil(){
        isSuperAdmin();

        def user = springSecurityService.currentUser
        def adminInstance = Admin.get(user.id)

        [adminInstance: adminInstance]        
    }

    @Secured(['ROLE_SUPER'])
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [adminInstanceList: Admin.list(params), adminInstanceTotal: Admin.count()]
    }

    @Secured(['ROLE_SUPER'])
    def create() {
        [adminInstance: new Admin(params)]
    }

    @Secured(['ROLE_SUPER'])
    def save() {
        def adminInstance = new Admin(params)
        if (!adminInstance.save(flush: true)) {
            render(view: "create", model: [adminInstance: adminInstance])
            return
        }

        if (!adminInstance.authorities.contains(Role.findByAuthority(params.role))) {
            UserRole.create adminInstance, Role.findByAuthority(params.role)
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'admin.label', default: 'Admin'), adminInstance.id])
        redirect(action: "show", id: adminInstance.id)
    }

    @Secured(['ROLE_SUPER'])
    def show() {
        def adminInstance = Admin.get(params.id)
        if (!adminInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'admin.label', default: 'Admin'), params.id])
            redirect(action: "list")
            return
        }

        [adminInstance: adminInstance]
    }

    @Secured(['ROLE_SUPER'])
    def edit() {
        def adminInstance = Admin.get(params.id)
        if (!adminInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'admin.label', default: 'Admin'), params.id])
            redirect(action: "list")
            return
        }

        [adminInstance: adminInstance]
    }

    @Secured(['ROLE_SUPER'])
    def update() {
        def adminInstance = Admin.get(params.id)
        if (!adminInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'admin.label', default: 'Admin'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (adminInstance.version > version) {
                adminInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'admin.label', default: 'Admin')] as Object[],
                          "Another user has updated this Admin while you were editing")
                render(view: "edit", model: [adminInstance: adminInstance])
                return
            }
        }

        adminInstance.properties = params

        if (!adminInstance.save(flush: true)) {
            render(view: "edit", model: [adminInstance: adminInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'admin.label', default: 'Admin'), adminInstance.id])
        redirect(action: "show", id: adminInstance.id)
    }

    @Secured(['ROLE_SUPER'])
    def delete() {
        def adminInstance = Admin.get(params.id)
        if (!adminInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'admin.label', default: 'Admin'), params.id])
            redirect(action: "list")
            return
        }

        try {
            adminInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'admin.label', default: 'Admin'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'admin.label', default: 'Admin'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
