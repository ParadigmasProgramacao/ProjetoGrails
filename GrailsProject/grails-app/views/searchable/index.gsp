<html>
<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>

	<h1> Search a product</h1>
	<div class="searchForm">
		<g:form controller="searchable">
        <g:textField name="q" value=""/>
        <g:submitButton name="Search"/>
    	</g:form>
	</div>

	<g:set var="iterator" value="${0}" />
	<g:set var="hasBook" value="${0}" />
	<g:set var="hasFilm" value="${0}" />
	<g:each var="product" in="${searchResult?.results}">
		<g:set var="iterator" value="${iterator+1}" />
		
		<g:if test="${product.type.equals('book')}" >
			<g:set var="hasBook" value="${1}" />
		</g:if>
		<g:elseif test="${product.type.equals('film')}" >
			<g:set var="hasFilm" value="${1}" />
		</g:elseif>
	</g:each>

	<g:if test="${iterator >= 0}">
		<g:if test="${hasBook == 1}">
			<h1>Books found</h1>
			<table class="table table-bordered margin-top-medium">
				<thead>
					<tr>
						<g:sortableColumn property="name" title="Name" />
						<g:sortableColumn property="description" title="Description" />
						<g:sortableColumn property="genre" title="Genre" />
						<g:sortableColumn property="author" title="Author" />
						<g:sortableColumn property="publisher" title="Publisher" />
						<g:sortableColumn property="price" title="Price" />
						<g:sortableColumn property="paypal" title="PayPal" />
					</tr>
				</thead>
				<tbody>
					<g:each var="product" in="${searchResult?.results}">
						<g:if test="${product.type.equals('book')}" >
							<tr>
								<td><g:link action="show" id="${product.id}">${fieldValue(bean: product, field: "name")}</g:link></td>
				
								<td>${fieldValue(bean: product, field: "description")}</td>
							
								<td>${fieldValue(bean: product, field: "genre")}</td>
							
								<td>${fieldValue(bean: product, field: "author")}</td>
								<td>${fieldValue(bean: product, field: "publisher")}</td>

								<td>R$ ${fieldValue(bean: product, field: "price")}</td>

								<td> 
									<paypal:button 
							            itemName="${product.name}"
							            itemNumber="${product.id}"
							            transactionId="${payment?.transId}"
							            amount="${product.price / 10}"
							            currency = "BRL"
							                discountAmount="0"
							            buyerId= "1"
							            />
								</td>
							</tr>
						</g:if>
					</g:each>
				</tbody>
			</table>
		</g:if>
		<g:if test="${hasFilm == 1}">
			<h1>Films found</h1>
			<table class="table table-bordered margin-top-medium">
				<thead>
					<tr>
						<g:sortableColumn property="name" title="Name" />
						<g:sortableColumn property="description" title="Description" />
						<g:sortableColumn property="releaseYear" title="Release Year" />
						<g:sortableColumn property="genre" title="Genre" />
						<g:sortableColumn property="runtime" title="Runtime" />
						<g:sortableColumn property="price" title="Price" />
						<g:sortableColumn property="paypal" title="PayPal" />
					</tr>
				</thead>
				<tbody>
					<g:each var="product" in="${searchResult?.results}">
						<g:if test="${product.type.equals('film')}" >
							<tr>
								<td><g:link action="show" id="${product.id}">${fieldValue(bean: product, field: "name")}</g:link></td>
				
								<td>${fieldValue(bean: product, field: "description")}</td>
							
								<td>${fieldValue(bean: product, field: "releaseYear")}</td>
							
								<td>${fieldValue(bean: product, field: "genre")}</td>
							
								<td>${fieldValue(bean: product, field: "runtime")}</td>

								<td>R$ ${fieldValue(bean: product, field: "price")}</td>

								<td> 
									<paypal:button 
							            itemName="${product.name}"
							            itemNumber="${product.id}"
							            transactionId="${payment?.transId}"
							            amount="${product.price / 10}"
							            currency = "BRL"
							                discountAmount="0"
							            buyerId= "1"
							            />
								</td>
							</tr>
						</g:if>
					</g:each>
				</tbody>
			</table>
		</g:if>
	</g:if>

	<g:else>
			<h1>Nothing was found with that name</h1>
	</g:else>
	
</body>

</html>