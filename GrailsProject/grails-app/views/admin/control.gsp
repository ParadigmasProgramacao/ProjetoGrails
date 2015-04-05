<%@ page import="org.grails.store.Product" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<title>Control Panel</title>

	<style type="text/css">
		.container-control{
			padding: 10px;
		}

		.break{
			margin-bottom: 100px;
		}

		.box-control{
			padding: 5px 10px;
		}
		
		.link-control{
			text-align: center;
		}
	</style>
</head>

<body>

	<sec:ifAllGranted roles="ROLE_SUPER">
		<div class="container-control col-md-12 break">
			<div class="page-header">
				<h2>Admin</h2>
			</div>

			<div class="box-control col-md-3">
				<g:link  action="perfil">
					<div class="col-md-12 link-control">
						<img src="${resource(dir: 'images/icons', file: 'personal.png')}" alt="My Profile">
					</div>
					<div class="col-md-12 link-control">
						My Profile
					</div>
				</g:link>
			</div>
			<div class="box-control col-md-3">
				<g:link  action="list">
					<div class="col-md-12 link-control">
						<img src="${resource(dir: 'images/icons', file: 'list-admin.png')}" alt="List Admin">
					</div>
					<div class="col-md-12 link-control">
						List All Admin
					</div>
				</g:link>
			</div>
			<div class="box-control col-md-3">
				<g:link  action="create">
					<div class="col-md-12 link-control">
						<img src="${resource(dir: 'images/icons', file: 'add-admin.png')}" alt="new Admin">
					</div>
					<div class="col-md-12 link-control">
						Add Admin
					</div>
				</g:link>
			</div>
		</div>
	</sec:ifAllGranted>

	<div class="container-control col-md-12">
		<div class="page-header"><h2>Add Products</h2></div>

		<div class="box-control col-md-3">
			<g:link controller="film" action="create">
				<div class="col-md-12 link-control">
					<img src="${resource(dir: 'images/icons', file: 'movie.png')}" alt="new Film">
				</div>
				<div class="col-md-12 link-control">
					Add Film
				</div>
			</g:link>
		</div>
		<div class="box-control col-md-3">
			<g:link controller="book" action="create">
				<div class="col-md-12 link-control">
					<img src="${resource(dir: 'images/icons', file: 'book.png')}" alt="new Book">
				</div>
				<div class="col-md-12 link-control">
					Add book
				</div>
			</g:link>
		</div>
	</div>
</body>

</html>