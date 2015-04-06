<html>
<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>
	<h1>Lista dos produtos encontrados</h1>
	<g:each var="product" in="${searchResult?.results}">
		<g:set var="type" value="${product.type}" />
		<g:if  test="${type.equals('book')}">
			${product.type} | ${product.name} | ${product.description} | ${product.price} | ${product.publicationYear} | <br>  
		</g:if>

		<g:else>
			${product.type} | ${product.name} | ${product.description} | ${product.price} | ${product.releaseYear} | <br>  
		</g:else>
	</g:each>
</body>

</html>