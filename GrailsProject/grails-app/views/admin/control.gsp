<%@ page import="org.grails.store.Product" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	
	<title>Control Panel</title>
</head>

<body>
	
	<g:link  action="perfil">Perfil Admin</g:link>
	<hr>
	<g:link controller="book" action="create">add Book</g:link>
	<br>
	<g:link controller="film" action="create">add Film</g:link>
	
	<hr>
	

	<sec:ifAllGranted roles="ROLE_SUPER">
		<g:link action="create">add ADMIN</g:link><br>	
		<g:link action="list">list ADMIN</g:link><br>
	</sec:ifAllGranted>
	<sec:ifNotGranted roles="ROLE_SUPER">você não é um super usuário</sec:ifNotGranted>
</body>

</html>