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
			${product.type} | ${product.name} | ${product.description} | ${product.price} | ${product.publicationYear} |
		</g:if>

		<g:else>
			${product.type} | ${product.name} | ${product.description} | ${product.price} | ${product.releaseYear} |
		</g:else>

		<paypal:button 
			itemName="${product.name}"
			itemNumber="${product.id}"
			transactionId="${payment?.transId}"
			amount="${product.price / 10}"
			currency = "BRL"
		        discountAmount="0"
			buyerId= "1"
			/>
		<br>
	</g:each>
</body>

</html>