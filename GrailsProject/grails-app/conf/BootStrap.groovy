import org.grails.store.User
import org.grails.store.UserRole
import org.grails.store.Role
import org.grails.store.Admin
import org.grails.store.Book

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
    	}



        def genreBook = ["Novel", "Poem", "Drama", "Graphic Novel", "Comedy", "Non fiction"]
        def book = new Book();
        def random = new Random();
        def rPrice = random.nextInt(70)
        def rGenre = random.nextInt() % 70 + 52
        for(def i in 1..22)
        {
            rPrice = random.nextInt(70) + 52
            rGenre = random.nextInt() % 6
           book = new Book(
                    name: "Book ${i}",
                    description: "book of ${genreBook.getAt(rGenre)}",
                    price: rPrice,
                    genre: "${genreBook.getAt(rGenre)}",
                    author: "Best Author",
                    publisher: "Publisher1",
                    publicationYear: "2014")
            book.save(failOnError: true)
        }

    }

    def destroy = {
    }
}
