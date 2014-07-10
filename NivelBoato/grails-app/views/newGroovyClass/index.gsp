

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'newGroovyClass.label', default: 'NewGroovyClass')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-newGroovyClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-newGroovyClass" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'newGroovyClass.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="senha" title="${message(code: 'newGroovyClass.senha.label', default: 'Senha')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${newGroovyClassInstanceList}" status="i" var="newGroovyClassInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${newGroovyClassInstance.id}">${fieldValue(bean: newGroovyClassInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: newGroovyClassInstance, field: "senha")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${newGroovyClassInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
