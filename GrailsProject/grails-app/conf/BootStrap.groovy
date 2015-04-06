import org.grails.store.User
import org.grails.store.UserRole
import org.grails.store.Role
import org.grails.store.Admin
import org.grails.store.Book
import org.grails.store.Film

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


<<<<<<< HEAD
        def book = new Book(
                    name: "Drama1",
                    description: "Best book of Drama",
                    price: 65,
                    genre: "Drama",
                    author: "Best Author",
                    publisher: "Publisher1",
                    publicationYear: "2014")
        book.save(failOnError: true)

        book = new Book(
                    name: "Drama2",
                    description: "Second Best book of Drama",
                    price: 90,
                    genre: "Drama",
                    author: "Best Author",
                    publisher: "Publisher2",
                    publicationYear: "2011")
        book.save(failOnError: true)
=======

        def genreBook = ["Novel", "Poem", "Drama", "Graphic Novel", "Comedy", "Non fiction"]
        def genreFilm = ["Action", "Adventure", "Comedy", "Crime", "Horror", "Romance", "Historical", "Animation"]
        def book = new Book();
        def film = new Film();
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
                    type: "book",
                    genre: "${genreBook.getAt(rGenre)}",
                    author: "Best Author",
                    publisher: "Publisher1",
                    publicationYear: 2014)
            book.save(failOnError: true)
        }

        for(i in 1..20)
        {
            rPrice = random.nextInt(30) + 42
            rGenre = random.nextInt() % 8
            film = new Film(
                    name: "Film ${i}",
                    description: "film of ${genreFilm.getAt(rGenre)}",
                    price: rPrice,
                    type: "film",
                    genre: "${genreFilm.getAt(rGenre)}",
                    runtime: 160,
                    releaseYear: 2014)
            film.save(failOnError: true)
        }

>>>>>>> dev2
    }

    def destroy = {
    }
}

