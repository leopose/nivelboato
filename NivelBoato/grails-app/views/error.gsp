<!DOCTYPE html>
<html>
	<head>
		<title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
		<meta name="layout" content="template">
		<g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
	</head>
	<body>
            <div class="page-content">
		<g:if env="development">
			<g:renderException exception="${exception}" />
		</g:if>
		<g:else>
			<ul class="errors">
				<li>An error has occurred</li>
			</ul>
		</g:else>
            </div>
	</body>
</html>
