<html>
<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>
	<h1>Lista dos produtos encontrados</h1>
	<g:each var="product" in="${searchResult?.results}">
		Testando variável price = ${product.price}

		<g:if env="product" test="${runtime == 140}">
			Entrou no if<br>
		</g:if>

		<g:else>
			Entrou no else<br>
		</g:else>
	</g:each>
</body>

</html>