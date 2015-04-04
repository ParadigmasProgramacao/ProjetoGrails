<div class="">
	<ul class="nav nav-tabs" data-role="listview" data-split-icon="gear" data-filter="true">
	
		<g:each status="i" var="c" in="${['home', 'film', 'book']}">
			<li class="${c}">
				<g:link controller="${c}" action="index">
					<g:message code="${c}" default="${c.capitalize()}"/>
				</g:link> 
			</li>
		</g:each>

	<sec:ifNotLoggedIn>
		<li class="login">
			<g:link controller='login' action='auth'>Login</g:link>
		</li>
	</sec:ifNotLoggedIn>

	<sec:ifLoggedIn>
		<li class="login">
			<g:link controller='logout' action='index'>Logout</g:link>
		</li>
	</sec:ifLoggedIn>

	<sec:ifAllGranted roles="ROLE_SUPER">
		<li class="admin">
			<g:link controller="admin" action="control">Control Panel</g:link>
		</li>
	</sec:ifAllGranted>
	<sec:ifAllGranted roles="ROLE_ADMIN">
		<li class="admin">
			<g:link controller="admin" action="control">Control Panel</g:link>
		</li>
	</sec:ifAllGranted>
		
	</ul>
</div>
