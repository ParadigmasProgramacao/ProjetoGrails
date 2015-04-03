import org.grails.store.User
import org.grails.store.UserRole
import org.grails.store.Role

class BootStrap {

	def springSecurityService 

    def init = { servletContext ->
    	def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
    	def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
    	def superAdminRole = Role.findByAuthority('ROLE_SUPER') ?: new Role(authority: 'ROLE_SUPER').save(failOnError: true)

    	if(User.findByUsername('admin') == null){
    		def superUser = new User(username: 'admin', password: 'admin', enabled: true)
    		superUser.save(flush: true)
    		UserRole.create superUser, superAdminRole, true
    		printf 'admin add'
    	}

    }

    def destroy = {
    }
}
