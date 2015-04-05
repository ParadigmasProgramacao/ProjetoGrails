<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>
	<h1> Procure um produto</h1>
	<div class="searchForm">
		<g:form controller="searchable">
        <g:textField name="q" value=""/>
        <g:submitButton name="Search"/>
    	</g:form>
	</div>
</body>

</html>
